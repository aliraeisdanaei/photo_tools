#!/bin/bash



#make a dir to store the live photos after we are done with them
mkdir $1/livePhotos


for f in $1/*.MOV; do
    length=`ffmpeg -i $f 2>&1 | grep Duration | cut -d ' ' -f 4 | sed s/,// | cut -d ':' -f3 | cut -d '.' -f1`
    
    #the length must be less than 3
    if [ $length -le 3 ]
    then
        #there must not be a jpg file w/ the same name
        if ! [[ -f "${f%.*}.jpg" ]]
        then 
            #extract all of the frames from this MOV file
            ffmpeg -i $f -r 1 -f image2 ${f%.*}_%3d.jpeg

            

        fi

        #move the MOV file to a seperate directory
        mv $f $1/livePhotos

    fi

done

rm $1/*.HEIC