
#define the suffixes
.SUFFIXES:	.tex

#macro definitions
SHELL = /bin/sh
LATEX = pdflatex

.tex.aux:	
	$(LATEX) $<


all:	IntroStats.pdf

IntroStats.pdf: IntroStats.tex *.tex
	$(LATEX) IntroStats

force:
	$(LATEX) IntroStats


clean:
	rm -f *.aux *.nav *.snm *.toc *.log *.dvi *.out

