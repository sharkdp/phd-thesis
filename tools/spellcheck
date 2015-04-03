#!/bin/bash

for file in chapters/*.tex appendices/*.tex; do
    echo "Spellchecking '$file'"
    hunspell -d en_US -t -i utf8 "$file"
done
