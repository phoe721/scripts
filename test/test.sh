#!/bin/bash

#echo hello world
#str='heLlO WoRld'
#echo $str

#BF=/var/tmp/backup-$(date +%Y%m%d).tgz
#echo $BF
#tar cvzf $BF /home/aaron/

#HELLO=hello
#function hello {
#	local HELLO=World
#	echo $HELLO
#}
#
#echo $HELLO
#hello
#echo $HELLO

#if [ 'foo1' = 'foo' ]; then
#	echo true
#else
#	echo false
#fi

#for i in $(ls); do
#	echo item: $i
#done

#for i in `seq 1 10`; do
#	echo $i
#done

#COUNTER=0
#while [ $COUNTER -lt 10 ]; do
#	echo the counter is $COUNTER
#	let COUNTER=COUNTER+1
#done

#COUNTER=20
#until [ $COUNTER -lt 10 ]; do
#	echo COUNTER $COUNTER
#	let COUNTER-=1
#done

#function quit {
#	exit
#}
#
#function hello {
#	echo Hello!
#}
#
#function e {
#	echo $1
#}
#
#hello
#quit
#echo foo
#
#e hello
#e world
#quit
#echo foo

#OPTIONS="Hello Quit"
#select opt in $OPTIONS; do
#	if [ "$opt" = "Quit" ]; then
#		echo done
#		exit
#	elif [ "$opt" = "Hello" ]; then
#		echo Hello World
#	else
#		clear
#		echo bad option
#	fi
#done

#if [ -z "$1" ]; then
#	echo usage: $0 directory
#	exit
#fi
#SRCD=$1
#TGTD="/var/tmp/"
#OF=home-$(date +%Y%m%d).tgz
#tar cvzf $TGTD$OF $SRCD

#echo Enter your name
#read NAME
#echo Hi $NAME!

#echo Enter your full name
#read fn ln
#echo Hi $fn $ln!

#DBS=`mysql -u root -e "show databases"`
#for b in $DBS;
#do
#	mysql -u root -e "show tables from $b"
#done
