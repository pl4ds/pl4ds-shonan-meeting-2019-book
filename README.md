# pl4ds-shonan-meeting-2019-book

## About

The style used in this book is an adaption of the Springer Contribution Book style.
The existing .tex files can be used as templates, especially _/chapters/chapter01/index.tex_ as a reference for an author's contribution.

## Structure

File / Dir | Description
------------ | -------------
__editor.tex__ | The top level entry point for the book.
__styles__ | Contains predefined bibtex styles that can be used, add your own if applicable. Currently, the spmpsci style is set in editor.tex
__chapters__ | Contains the book contributions. One subdirectory per chapter.
__chapters/chapterXX__ | Contains a book contribution. May comprise an __assets__ folder for images, an __index.tex__ as entry point for the chapter and additional files by the author (e.g. bibtex file, other .tex files).
__editorial__ | Contains the editorial files, hence the book files on global level. May comprise an __assets__ folder for images, and .tex files for everything used in the book that is not a contribution, plus other files (e.g. bibtex file for a global reference section).
__template__ | The original Springer template the book is based on (with adaptions).
__compile.sh__ | A shell script to compile the whole book. It will produce a .pdf, .dvi and .ps file. _Note_: Uses the mklatex package => Requires Perl and the mklatex package installed on the host to work (plus a shell interpreter if you're not on linux, e.g. cygwin64 for Windows).
__svmult.cs__ | The latex class template for the book (by Springer, potentially with adaptions).

