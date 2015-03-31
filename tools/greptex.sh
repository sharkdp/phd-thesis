#!/bin/bash

grep --color --ignore-case --line-number "$@" chapters/*.tex appendices/*.tex frontmatter/*.tex endmatter/*.tex
