TEX = pdflatex -file-line-error -shell-escape -halt-on-error -interaction=nonstopmode

.PHONY: all clean

all: poemas.pdf

*.pdf: *.tex
	$(TEX) $^
	$(TEX) $^

clean:
	rm -rf *.aux *.log *.out *.toc
