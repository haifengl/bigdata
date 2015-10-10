#!/bin/sh
pandoc -s -S --toc --webtex --filter pandoc-citeproc --metadata bibliography=bigdata.bib bigdata.tex -o README.md
pandoc -S --toc bigdata.tex -o bigdata.epub
