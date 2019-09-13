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
	# if you want to keep one of these files, remove the respective one.
	rm bu*.bbl bu*.aux bu*.blg *.glsdefs *.acn *.ist > /dev/null 2>&1
	echo "Compilation done successfully."
	else
		echo "Error during compilation."
fi