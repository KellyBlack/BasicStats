
#define the suffixes
.SUFFIXES:	.tex

#macro definitions
SHELL = /bin/sh
LATEX = pdflatex

.tex.aux:	
	$(LATEX) $<


all:	labManual.pdf

labManual.pdf: labManual.tex *.tex
	$(LATEX) labManual

force:
	$(LATEX) labManual


clean:
	rm -f *.aux *.nav *.snm *.toc *.log *.dvi *.out

