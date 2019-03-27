do: qdo
	@echo "---add bibs---" && bibtex main
	make qdo
	xdg-open main.pdf

qdo:							#quick do. No bibs
	@echo "---compiling---"
	texfot pdflatex -shell-escape -halt-on-error -file-line-error main.tex
