#!/bin/bash

echo "Give a directory name to create:"
read NEW_DIR

ORIG_DIR=$(pwd)

[[ -d $NEW_DIR ]] && echo $NEW_DIR already exists, aborting && exit
mkdir $NEW_DIR

cd $NEW_DIR
pwd

for n in 1 2 3 4
do
	touch file$n
done

ls -s file?

for names in file?
do 
	echo This file is named $names > $names
done

cat file?

cd $ORIG_DIR
rm -rf $NEW_DIR
echo "Goodbye!"
