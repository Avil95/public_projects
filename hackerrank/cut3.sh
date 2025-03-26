#!/bin/bash
touch tempfile.txt
for i in {1..100}
do
    read intxt
    echo $intxt >> tempfile.txt
done
sed -i '/^[[:space:]]*$/d' tempfile.txt
echo "$(cut -c 2-7 tempfile.txt)" > tempfile.txt
cat tempfile.txt
rm tempfile.txt
