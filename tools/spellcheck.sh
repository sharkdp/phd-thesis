#!/bin/bash

for file in chapters/*.tex appendices/*.tex; do
    echo "Spellchecking '$file'"
    # aspell --mode=tex --dont-tex-check-comments -l en -c "$file"
    hunspell -d en_US -t -i utf8 "$file"
done
