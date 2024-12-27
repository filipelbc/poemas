TEX = pdflatex -file-line-error -shell-escape -halt-on-error -interaction=nonstopmode

.PHONY: all
all: poemas.pdf

%.pdf: %.tex
	$(TEX) $^
	$(TEX) $^

.PHONY: clean
clean:
	rm -rf *.aux *.log *.out *.toc
