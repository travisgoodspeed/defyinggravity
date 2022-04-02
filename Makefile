all: book.pdf paper.pdf


gravity.tex: defying_gravity.html
	./convert.zsh >gravity.tex
book.pdf: *.tex *.html gravity.tex
	pdflatex book
paper.pdf: *.tex *.html gravity.tex
	pdflatex paper
clean:
	rm -f *.pdf *~ gravity.tex *.log *.aux

