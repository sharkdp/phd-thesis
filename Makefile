SRC_BIB = /home/shark/PhD/bibtex/PhD.bib

.PHONY: all clean

bibliography/all.bib: $(SRC_BIB)
	cp $(SRC_BIB) bibliography/all.bib

clean:
	rm -rf dist
	mkdir dist
