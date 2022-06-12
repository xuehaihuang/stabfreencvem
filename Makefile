
all: stabfreevem.pdf \

stabfreevem.pdf: stabfreevem.tex
	pdflatex -shell-escape stabfreevem.tex
	bibtex stabfreevem.aux
	pdflatex -shell-escape stabfreevem.tex
	pdflatex -shell-escape stabfreevem.tex
	evince stabfreevem.pdf&


.PHONY:clean  
clean:
	-rm -fr *.ps *.dvi *.aux *.toc *.idx *.ind *.ilg *.log *.out *~ *.tid *.tms *.pdf *.bak *.blg *.bbl *.gz *.snm *.nav _minted*

