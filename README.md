# phd-thesis
LaTeX sources, bibliography, build system and tools for my PhD thesis.

Requirements
------------
- it is probably a good idea to have `texlive-full` (or equivalent) installed. A lot of custom packages are required
- [biber](https://www.ctan.org/pkg/biber)
- optional: [latexmk](http://www.ctan.org/pkg/latexmk/)
- optional: [pplatex](http://www.stefant.org/web/projects/software/pplatex.html)

On Ubuntu, you can install the first three via
```sh
apt-get install texlive-full biber latexmk
```

Building
--------
Clone the repository including the submodule [latex-report](https://github.com/sharkdp/latex-report):
```sh
git clone --recursive https://github.com/sharkdp/phd-thesis
```
Then, compile the document by calling `latexmk` from the root folder.

Note: If you do not have `pplatex` installed, you have to remove the file `.latexmkrc` (or modify it) before calling `latexmk`.
