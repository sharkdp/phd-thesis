#!/bin/bash

grep --color --line-number "$@" chapters/*.tex appendices/*.tex
