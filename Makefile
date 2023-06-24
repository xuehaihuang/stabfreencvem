
all: stabfreevem.pdf \

stabfreevem.pdf: stabfreevem.tex
	pdflatex -shell-escape stabfreevem.tex
	bibtex stabfreevem.aux
	pdflatex -shell-escape stabfreevem.tex
	pdflatex -shell-escape stabfreevem.tex
	evince stabfreevem.pdf&

stabfreevem_sinum.pdf: stabfreevem_sinum.tex
	pdflatex -shell-escape stabfreevem_sinum.tex
	bibtex stabfreevem_sinum.aux
	pdflatex -shell-escape stabfreevem_sinum.tex
	pdflatex -shell-escape stabfreevem_sinum.tex
	evince stabfreevem_sinum.pdf&


.PHONY:clean  
clean:
	-rm -fr *.ps *.dvi *.aux *.toc *.idx *.ind *.ilg *.log *.out *~ *.tid *.tms *.bak *.blg *.bbl *.gz *.snm *.nav _minted* *.thm

