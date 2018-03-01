#!/bin/bash

if ping -c 1 -W 1 "192.168.1.102" > /dev/null; then
	mount -t cifs -o credentials=/root/secret/winlogin //192.168.1.102/videos /media/video
	echo "Video folder mounted on /media/usb!";
else
	echo "Host is not alive! Cannot mount video folder!";
fi	
