#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SOURCE_INPUT="${1:-$ROOT_DIR/README.md}"
OUTPUT_DIR="${2:-$ROOT_DIR/output/softwareone}"
DOC_TEMPLATE="$ROOT_DIR/templates/softwareone/source/plantilla-swo.dotx"
PPT_TEMPLATE="$ROOT_DIR/templates/softwareone/source/plantilla-swo.pptx"
PPT_REFERENCE_PREP="$ROOT_DIR/scripts/prepare_ppt_reference.py"
TMP_DIR="$ROOT_DIR/.tmp/softwareone"

if command -v readlink >/dev/null 2>&1; then
  SOURCE_FILE="$(readlink -f "$SOURCE_INPUT")"
else
  SOURCE_FILE="$SOURCE_INPUT"
fi

if [[ ! -f "$SOURCE_FILE" ]]; then
  echo "Error: source file not found: $SOURCE_FILE" >&2
  exit 1
fi

if [[ ! -f "$DOC_TEMPLATE" ]]; then
  echo "Error: Word template not found: $DOC_TEMPLATE" >&2
  exit 1
fi

if [[ ! -f "$PPT_TEMPLATE" ]]; then
  echo "Error: PowerPoint template not found: $PPT_TEMPLATE" >&2
  exit 1
fi

if [[ ! -f "$PPT_REFERENCE_PREP" ]]; then
  echo "Error: PPT reference helper not found: $PPT_REFERENCE_PREP" >&2
  exit 1
fi

mkdir -p "$OUTPUT_DIR" "$TMP_DIR"

if [[ "$SOURCE_FILE" == "$ROOT_DIR"/* ]]; then
  SOURCE_RELATIVE="${SOURCE_FILE#"$ROOT_DIR"/}"
else
  SOURCE_RELATIVE="$(basename "$SOURCE_FILE")"
fi

SOURCE_STEM="${SOURCE_RELATIVE%.*}"
SOURCE_STEM="${SOURCE_STEM//\//-}"
DOCX_OUT="$OUTPUT_DIR/${SOURCE_STEM}-swo.docx"
PPTX_OUT="$OUTPUT_DIR/${SOURCE_STEM}-swo.pptx"

# Pandoc needs a .docx reference file, so convert .dotx once per run.
DOCX_REFERENCE="$TMP_DIR/plantilla-swo.docx"
PPTX_REFERENCE="$TMP_DIR/plantilla-swo-pandoc-reference.pptx"
libreoffice --headless --convert-to docx "$DOC_TEMPLATE" --outdir "$TMP_DIR" >/dev/null 2>&1
python3 "$PPT_REFERENCE_PREP" --input "$PPT_TEMPLATE" --output "$PPTX_REFERENCE"

if [[ ! -f "$DOCX_REFERENCE" ]]; then
  echo "Error: could not create DOCX reference from DOTX template." >&2
  exit 1
fi

if [[ ! -f "$PPTX_REFERENCE" ]]; then
  echo "Error: could not create PPTX reference from template." >&2
  exit 1
fi

pandoc "$SOURCE_FILE" --reference-doc="$DOCX_REFERENCE" -o "$DOCX_OUT"
pandoc "$SOURCE_FILE" --reference-doc="$PPTX_REFERENCE" -t pptx -o "$PPTX_OUT"

echo "Generated:"
echo "- $DOCX_OUT"
echo "- $PPTX_OUT"
