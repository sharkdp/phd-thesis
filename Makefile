SRC_BIB = /home/shark/PhD/bibtex/PhD.bib

.PHONY: clean spellcheck common-errors-check

bibliography/all.bib: $(SRC_BIB)
	cp $(SRC_BIB) bibliography/all.bib

clean:
	rm bibliography/all.bib
	rm -rf dist
	mkdir dist

check:
	bash tools/spellcheck
	bash tools/check-common-errors || true
