#!/bin/bash

# Create source folder
if [ ! -d src ]; then
	mkdir src
fi

# Install EPEL package
if ! rpm -qa | grep epel > /dev/null; then
	wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm
	sudo rpm -Uvh epel-release-*.rpm
	mv epel-release-*.rpm src
fi

# Install rtorrent
if ! rpm -qa | grep rtorrent > /dev/null; then
	yum -y install rtorrent
fi

# Install python-setuptools
if ! rpm -qa | grep python-setuptools > /dev/null; then
	yum -y install python-setuptools
fi 

# Install pip
if ! command -v pip; then
	wget https://bootstrap.pypa.io/get-pip.py
	python get-pip.py
fi

# Install pyrocore
if ! pip list | grep pyrocore; then
	pip install pyrocore
fi

# Install screen
if ! rpm -qa | grep screen- > /dev/null; then
	yum -y install screen
fi
