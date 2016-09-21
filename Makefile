all: README.md bigdata.epub

README.md: bigdata.tex
	pandoc -s -S --toc --webtex --filter pandoc-citeproc --metadata bibliography=bigdata.bib $< -o $@

bigdata.epub: bigdata.tex
	pandoc -S --toc $< -o $@

bigdata.pdf: bigdata.tex
	pandoc --toc $< -o $@
