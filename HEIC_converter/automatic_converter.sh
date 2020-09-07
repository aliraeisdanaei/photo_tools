#!/bin/bash


for f in $1/*; do
~/Pictures/Tools/HEIC_converter/tifig -v -p "$f" "${f%.*}.jpg"
done

rm $1/*.HEIC