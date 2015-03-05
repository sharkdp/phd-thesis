SRC_BIB = /home/shark/PhD/bibtex/PhD.bib

.PHONY: all clean

bibliography/all.bib: $(SRC_BIB)
	cp $(SRC_BIB) bibliography/all.bib

clean:
	rm -rf dist
	mkdir dist

spellcheck:
	bash tools/spellcheck.sh

common-errors-check:
	bash tools/common-errors-check.sh || true
