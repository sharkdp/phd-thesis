SRC_BIB = /home/shark/PhD/bibtex/PhD.bib

bib: $(SRC_BIB)
	cp $(SRC_BIB) bibliography/all.bib
