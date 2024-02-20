# Compilers
TEX = xelatex
BIB = bibtex

.PHONY: all
all: proposal.pdf

.PHONY: tidy
tidy:
	-rm ./*.aux ./*.ac? ./*.alg ./*.gl? ./*ist ./*.toc ./*.lo? ./*.out ./*.pytxcode ./*.bbl ./*.blg ./.*.swp 2>/dev/null || true

.PHONY: clean
clean: tidy
	-rm ./*.pdf 2>/dev/null || true

# LaTeX file recipe
%.pdf: %.tex
	$(TEX) $*
	-$(BIB) $*
	$(TEX) $*
	#-$(GLOS) $*
	$(TEX) $*




