#!/bin/bash
echo Please provide a directory name: 
read dname
mkdir $dname
echo pwd:
pwd $dname
echo
echo creating files...
touch ./$dname/empty1
touch ./$dname/empty2
touch ./$dname/empty3
echo listing files:
ls -s $dname
echo
echo Putting content into the files:
echo Writing \"Hello\" into empty 1.
echo Hello >> ./$dname/empty1
echo Showing empty1:
cat ./$dname/empty1
echo Deleting files...
rm -r $dname
echo Done.
echo Goodbye!
