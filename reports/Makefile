
all: response_num.pdf \

response_num.pdf: response_num.tex
	pdflatex -shell-escape response_num.tex
	bibtex response_num.aux
	pdflatex -shell-escape response_num.tex
	pdflatex -shell-escape response_num.tex
	evince response_num.pdf&


.PHONY:clean  
clean:
	-rm -fr *.ps *.dvi *.aux *.toc *.idx *.ind *.ilg *.log *.out *~ *.tid *.tms *.pdf *.bak *.blg *.bbl *.gz *.snm *.nav _minted*

