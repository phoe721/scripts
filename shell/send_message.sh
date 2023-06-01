#!/bin/bash
token=QRG4DeKdBdocWnrXPe2zbz0bWNokw82plREOOqNfekZ
url=https://notify-api.line.me/api/notify
message=$1

if [ -z "$message" ]
then
	echo "Message is empty!";
else
	/usr/bin/curl -X POST -H "Authorization: Bearer $token" -F "message=$message" $url
fi	
