#!/usr/bin/env python3
"""Build a Pandoc-compatible PPTX reference with SWO branding.

Approach:
- Start from Pandoc's default reference.pptx (guaranteed layout compatibility).
- Copy SWO theme and optional branding assets into that container.

This avoids layout-name/type mismatches while preserving corporate colors/fonts.
"""

from __future__ import annotations

import argparse
import shutil
import subprocess
import sys
import tempfile
import zipfile
from pathlib import Path


def build_pandoc_reference(path: Path) -> None:
    with path.open("wb") as f:
        subprocess.run(
            ["pandoc", "--print-default-data-file", "reference.pptx"],
            check=True,
            stdout=f,
        )


def build_reference(swo_template: Path, output: Path) -> None:
    with tempfile.TemporaryDirectory(prefix="swo-ppt-ref-") as tmp:
        tmp_ref = Path(tmp) / "pandoc-reference.pptx"
        build_pandoc_reference(tmp_ref)

        with zipfile.ZipFile(tmp_ref, "r") as z_base, zipfile.ZipFile(swo_template, "r") as z_swo:
            with zipfile.ZipFile(output, "w", compression=zipfile.ZIP_DEFLATED) as z_out:
                replace_parts = {"ppt/theme/theme1.xml", "ppt/tableStyles.xml"}
                written = set()
                for item in z_base.infolist():
                    if item.filename in replace_parts:
                        continue
                    z_out.writestr(item, z_base.read(item.filename))
                    written.add(item.filename)

                # Inject SWO theme and optional style parts.
                for part in replace_parts:
                    if part in z_swo.namelist():
                        z_out.writestr(part, z_swo.read(part))
                        written.add(part)

                # Bring in media/theme override assets if present.
                for item in z_swo.infolist():
                    if item.filename.startswith("ppt/media/") and item.filename not in written:
                        z_out.writestr(item, z_swo.read(item.filename))
                        written.add(item.filename)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", required=True, help="SWO source PPTX template")
    parser.add_argument("--output", required=True, help="Output PPTX reference for Pandoc")
    args = parser.parse_args()

    src = Path(args.input)
    dst = Path(args.output)

    if not src.is_file():
        print(f"Error: source template not found: {src}", file=sys.stderr)
        return 1

    dst.parent.mkdir(parents=True, exist_ok=True)

    try:
        build_reference(src, dst)
    except subprocess.CalledProcessError as exc:
        print(f"Error: pandoc failed building default reference: {exc}", file=sys.stderr)
        return 1
    except zipfile.BadZipFile:
        print("Error: invalid PPTX zip structure", file=sys.stderr)
        return 1

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
