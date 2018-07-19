#!/bin/bash
dev_num=/dev/sdb1
mount_point=/media/data
check_dev=`/usr/sbin/fdisk -l | /usr/bin/grep $dev_num | /usr/bin/wc -l`
check_mounted=`/usr/bin/mount | /usr/bin/grep $dev_num | /usr/bin/wc -l`

if [ "$check_dev" == "0" ]
then
	echo "Device not present: $dev_num";
elif [ "$check_dev" == "1" ] && [ "$check_mounted" == "1" ] 
then
	echo "Data folder is already mounted!";
elif [ "$check_dev" == "1" ] && [ "$check_mounted" == "0" ] 
then
	/usr/bin/mount -t ntfs-3g $dev_num $mount_point
	if [ $? -eq 0 ]
	then
		echo "Data folder mounted on $mount_point!";
	else
		echo "Data folder not mounted on $mount_point!";
	fi
fi	
