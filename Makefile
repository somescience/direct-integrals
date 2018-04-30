.PHONY: all clean

all: direct_integrals.pdf

direct_integrals.pdf: direct_integrals.tex direct_integrals.bib
	latexmk -pdf -use-make direct_integrals.tex

clean:
	latexmk -CA
