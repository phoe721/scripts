#!/bin/bash

for file in *.srt
do
	echo "Converting \"$file\" to vtt format..."
	extension="${file##*.}"
	newfile="${file%.*}.vtt"
	/usr/bin/ffmpeg -i "$file" "$newfile" 
done
