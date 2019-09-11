# pl4ds-shonan-meeting-2019-book

## About

The style used in this book is an adaption of the Springer Contribution Book style.
The existing .tex files can be used as templates, especially _/chapters/chapter01/index.tex_ as a reference for an author's contribution and _editor.tex_ as a template for the books top level file.

## Structure

File / Dir | Description
------------ | -------------
__editor.tex__ | The top level entry file for the book.
__styles__ | Contains predefined bibtex styles that can be used, add your own if applicable. Currently, the spmpsci style is set in editor.tex
__chapters__ | Contains the book contributions. One subdirectory per chapter.
__chapters/chapterXX__ | Contains a book contribution. May comprise an __assets__ folder for images, an __index.tex__ as entry file for the chapter and additional files by the author (e.g. bibtex file, other .tex files).
__editorial__ | Contains the editorial files, hence the book files on global level. May comprise an __assets__ folder for images, and .tex files for everything used in the book that is not a contribution, plus other files (e.g. bibtex file for a global reference section).
__template__ | The original Springer template the book is based on (with adaptions).
__compile.sh__ | A shell script to compile the whole book. It will produce a .pdf, .dvi and .ps file. _Note_: Uses the mklatex package => Requires Perl and the mklatex package installed on the host to work (plus a shell interpreter if you're not on linux, e.g. cygwin64 for Windows). See below for more info.
__svmult.cs__ | The latex class template for the book (by Springer, potentially with adaptions).

## Compile

Use compile.sh (> bash compile) to compile the document. As things like bibtex refs and indices are not trivial to compile (requires multiple compilations), the script uses the mklatex package which handles this automatically. Note that you need Perl, mklatex (installed via Latex Package Manager) and, if you're not on linux, a shell interpreter like cygwin64 to make it work. It will generate a .pdf and other output files.

### Compile single chapters:
You can also use this script to compile single chapters (so authors can compile their own chapter independently while writing it). For that, copy the script and the svmult.cs file into the chapters directory. In the chapter's _index.tex_ template, uncomment the preamble and wrap the whole content into a _document_ section (see file for more info) to make it compileable, and rewind these changes in the end to make it compileable as a book contribution again.

If something is unclear, let me know (simon.schoenwaelder@gmx.de).
