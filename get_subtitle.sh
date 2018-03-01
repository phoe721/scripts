#!/bin/bash

VIDEO=/media/video/*
for f in $VIDEO
do
	filename=$(basename "$f")
	ext=${filename##*.}
	filename=${filename%.$ext}
	if [ "$ext" == "mkv" ] 
	then
		/usr/bin/ffmpeg -i $f $filename.vtt
	fi
done	
