#!/bin/bash

echo "Release Page cache, dentries, and inodes..."
echo 3 > /proc/sys/vm/drop_caches
echo "Done"
