#!/bin/bash

echo "Fixing no sound problems..."
/usr/bin/setfacl -m u:aaron:rw /dev/snd/*
echo "Done"
