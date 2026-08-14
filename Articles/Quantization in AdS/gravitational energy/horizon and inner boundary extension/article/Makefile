PYTHON := python3
LATEXMK := latexmk

VAULT_ROOT := ../../../../..
BUILDER := $(VAULT_ROOT)/scripts/pandoc-texfiles/build_texfiles.py
CONFIG := pandoc-texfiles.yaml

TEXDIR := texfiles

LATEXMK_FLAGS := -pdf -interaction=nonstopmode -halt-on-error
PDF_POST_HOOK ?= $(LATEXMK) -c main.tex

.PHONY: all texfiles texfiles-dry-run force-texfiles pdf clean

all: texfiles pdf

texfiles:
	$(PYTHON) "$(BUILDER)" --config "$(CONFIG)"

texfiles-dry-run:
	$(PYTHON) "$(BUILDER)" --config "$(CONFIG)" --dry-run --force

force-texfiles:
	$(PYTHON) "$(BUILDER)" --config "$(CONFIG)" --force

pdf:
	cd "$(TEXDIR)" && $(LATEXMK) $(LATEXMK_FLAGS) main.tex && $(PDF_POST_HOOK)

clean:
	cd "$(TEXDIR)" && $(LATEXMK) -c main.tex
