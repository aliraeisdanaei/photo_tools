#!/bin/bash


for f in $1/*.HEIC; do
~/Pictures/photo_tools/HEIC_converter/tifig -v -p "$f" "${f%.*}.jpg"
done

rm $1/*.HEIC
