NAME=report

all: $(NAME).pdf

force:

clean:
	rm -fv *.aux *.log *.bcf *.blg *.bbl *.toc *.xml *.pdf *.out *.bak

$(NAME).pdf: force
	pdflatex $(NAME).tex
	biber $(NAME)
	pdflatex $(NAME).tex

.PHONY: all force clean

