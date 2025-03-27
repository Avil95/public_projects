#!/bin/bash
touch tempfile.txt
old_IFS=$IFS
IFS=$'\n'
for i in {1..100}
do
    read intxt
    echo $intxt >> tempfile.txt
done
IFS=$old_IFS
sed -i '/^[[:space:]]*$/d' tempfile.txt
echo "$(cut -f 2- tempfile.txt)" > tempfile.txt
cat tempfile.txt
rm tempfile.txt
