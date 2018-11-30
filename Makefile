.PHONY: all clean

all: direct_sums.pdf direct_integrals.pdf

pdf: direct_sums.pdf direct_integrals.pdf

direct_sums.pdf: direct_sums.tex direct_integrals.bib
	latexmk -pdf -use-make direct_sums.tex

direct_integrals.pdf: direct_integrals.tex direct_integrals.bib
	latexmk -pdf -use-make direct_integrals.tex

clean:
	latexmk -CA
