SHELL := /bin/bash
# Makefile for Sphinx documentation

# You can set these variables from the command line.
SPHINXBUILD   = sphinx-build
BUILDDIR      = exchange-docs/static/docs/
SOURCEDIR     = source

# User-friendly check for sphinx-build
ifeq ($(shell which $(SPHINXBUILD) >/dev/null 2>&1; echo $$?), 1)
$(error The '$(SPHINXBUILD)' command was not found. Make sure you have Sphinx installed, then set the SPHINXBUILD environment variable to point to the full path of the '$(SPHINXBUILD)' executable. Alternatively you can add the directory with the executable to your PATH. If you don't have Sphinx installed, grab it from http://sphinx-doc.org/)
endif

.PHONY: help
help:
	@echo "  make html - run to make standalone HTML files required for the python package"

.PHONY: html
html:
	rm -rf $(BUILDDIR)/*
	$(SPHINXBUILD) -b html $(SOURCEDIR) $(BUILDDIR)
	find $(BUILDDIR) -type f -name index.html -exec sed -i.bak 's@exchange_logo\"><a href=\"#\">@exchange_logo\"><a href=\"/\">@' {} +
	find $(BUILDDIR) -type f -name index.html -exec sed -i.bak 's@exchange_logo\"><a href=\"\.\./index.html\">@exchange_logo\"><a href=\"/\">@' {} +
	find $(BUILDDIR) -type f -name '*.bak' -exec rm {} +
