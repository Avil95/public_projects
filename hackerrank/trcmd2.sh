#!/bin/bash
touch tempfile.txt
for i in {1..100}
do
    read intxt
    echo $intxt >> tempfile.txt
done
sed -i '/^[[:space:]]*$/d' tempfile.txt
echo "$(cat tempfile.txt | tr -d '[:lower:]')" > tempfile.txt
cat tempfile.txt
rm tempfile.txt
