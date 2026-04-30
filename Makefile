SHELL := /bin/bash

SWO_SCRIPT := ./scripts/softwareone_build.sh
SWO_SOURCE ?= ./README.md
SWO_OUTPUT ?= ./output/softwareone

.PHONY: swo-docx swo-pptx swo-all

swo-all:
	$(SWO_SCRIPT) "$(SWO_SOURCE)" "$(SWO_OUTPUT)"

swo-docx:
	$(SWO_SCRIPT) "$(SWO_SOURCE)" "$(SWO_OUTPUT)"
	@echo "DOCX generated in $(SWO_OUTPUT)"

swo-pptx:
	$(SWO_SCRIPT) "$(SWO_SOURCE)" "$(SWO_OUTPUT)"
	@echo "PPTX generated in $(SWO_OUTPUT)"
