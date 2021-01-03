#!/usr/bin/env bash

inputdir=../BaroqueDub/*
outputdir=../BaroqueDub-output

shopt -s dotglob
find $inputdir -prune -type d | while IFS= read -r d; do 
    # echo "$d"
    # echo $(basename $d)
    banana-split/banana-split.py -i "$d" -o $outputdir/$(basename $d) -v
done