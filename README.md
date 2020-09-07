# Photo Alteration Tools

These tools are designed to convert most of the photo files that are taken by apple products to jpeg files. 
These include .HEIC and the live photos which are .MOV files
One must save this folder under ~/Pictures for the scripts to work properly.


## HEIC_converter
[This includes tifig built by these guys](https://github.com/monostream/tifig)
This script automatically converts all heic or similar files to jpg files from the directory sent as its argument, & then removes all of them. 


## Apple Live Photo to Jpeg Converter

This script uses ffmpeg to extract all of the frames of every MOV file that does not have a duplicate Jpeg file and is less than 3 seconds & moves the MOV files to a directory of live photos. 

The argument is the path that this conversion needs to take place in. 