.PHONY: all clean

all: direct_sums.pdf

pdf: direct_sums.pdf

direct_sums.pdf: direct_sums.tex direct_integrals.bib
	latexmk -pdf -use-make direct_sums.tex

clean:
	latexmk -CA
