#! /bin/bash

set -x

# clean up things
rm -rf ../examples
mkdir ../examples
rm -rf ../doc
mkdir ../doc
rm -rf ../test
mkdir ../test


# generate things
latex nuthesis.ins

# move files that need moving
mv nuthesis.cls ..
mv skeleton.tex ../examples
mv thesis-test.tex ../test
cp nuthesis.bib ../test
cp nuthesis.dtx ../doc
mv nuthesis.bib ../doc


# generate the docs
cd ../doc
pdflatex nuthesis.dtx
makeindex -s gind nuthesis
makeindex -s gglo -o nuthesis.gls nuthesis.glo
bibtex nuthesis
pdflatex nuthesis.dtx
pdflatex nuthesis.dtx


# see if the test works
cd ../test
cp ../nuthesis.cls ../unl.pdf .
pdflatex thesis-test
bibtex thesis-test
pdflatex thesis-test
pdflatex thesis-test
