# phd-thesis
This repository incudes all LaTeX sources, the bibliography, a build system and tools for my PhD thesis.

Requirements
------------
- TeX Live 2014 (at least). It is probably a good idea to have `texlive-full` (or equivalent) installed.
- [biber](https://www.ctan.org/pkg/biber)
- [latexmk](http://www.ctan.org/pkg/latexmk/) (optional)
- [pplatex](http://www.stefant.org/web/projects/software/pplatex.html) (optional)

Building
--------
Clone the repository including the submodule [latex-report](https://github.com/sharkdp/latex-report):
```sh
git clone --recursive https://github.com/sharkdp/phd-thesis
```
Then, compile the document by calling `latexmk` from the root folder.

Note: If you do not have `pplatex` installed, you have to remove the file `.latexmkrc` (or modify it) before calling `latexmk`.

Ubuntu
------
On Ubuntu, you can install an up-to-date version of TeX Live using [install-tl-ubuntu](https://github.com/scottkosty/install-tl-ubuntu) (remove previous texlive packages). This includes a version of `biber` and `latexmk`.
