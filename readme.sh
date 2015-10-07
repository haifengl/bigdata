#!/bin/sh
pandoc --webtex --filter pandoc-citeproc --bibliography=bigdata.bib bigdata.tex -o README.md
pandoc -S --toc bigdata.tex -o bigdata.epub
