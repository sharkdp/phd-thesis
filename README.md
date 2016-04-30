# PhD thesis
This repository incudes all LaTeX sources, the bibliography, a build system and tools for my PhD thesis.

Requirements
------------
- TeX Live 2015 or equivalent. It is probably a good idea to have `texlive-full` installed.
- [biber](https://www.ctan.org/pkg/biber)
- [latexmk](http://www.ctan.org/pkg/latexmk/) (optional)
- [pplatex](http://www.stefant.org/web/projects/software/pplatex.html) (optional)

Building
--------
Clone the full repository (including the submodule [latex-report](https://github.com/sharkdp/latex-report)), by calling:
```sh
git clone --recursive https://github.com/sharkdp/phd-thesis
```
Then, compile the document by running `latexmk` from the root folder. It should compile without any errors, warnings or badboxes. *Note*: If you do not have `pplatex` installed, you have to edit the file `.latexmkrc` (see first two lines). If you do not have `latexmk`, you have to run `pdflatex` and `biber` manually.
