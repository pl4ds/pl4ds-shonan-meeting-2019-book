#!/bin/sh
perl -version > /dev/null 2>&1
if [ $? -ne 0 ]; then
  echo "Script needs Perl installed to run."
  exit 1
fi
type "latexmk" > /dev/null 2>&1
if [ $? -ne 0 ]; then
  echo "Script needs latexmk (install via Latex package manager) to run."
  exit 1
fi
latexmk -pdfps
if [ $? -eq 0 ]; then
	latexmk -c
	rm *.bbl
fi