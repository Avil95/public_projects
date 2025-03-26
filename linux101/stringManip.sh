#!/bin/bash

echo
echo Assigning \"word\" to str1 and \"rhema\" to str2
str1="word"
str2="rhema"
echo str1: ${str1} len: ${#str1}
echo str2: ${str2} len: ${#str2}
echo
echo Here is an example of slicing a string using the \$\{string\:0\:n\} format for the string \"Mary had a little lamb. It was tasty.\"
str3="Mary had a little lamb. It was tasty."
echo Indices 0 to 6: ${str3:0:6} 
echo Indices 2 to 13: ${str3:2:13}
echo Extracting all characters after ~  using \$\string\#*~} format
echo After the dot: ${str3#*.} 
echo After the d: ${str3#*d}
echo
echo Please provide two strings.
echo str4:
read str4
echo str5:
read str5
echo 1. Checking if str4 is 0 length and str4 is nonzero length
if [[ ${#str4} -eq 0 && ${#str5} -ne 0 ]] ; then
	echo "str4 is len 0 and str5 is nonzero len"
else
	echo "str4 isn't len 0 or str5 is zero len"
fi
echo
echo 2. Comparing the lengths of str4 and str5:
if [[ ${#str4} -eq ${#str5} ]] ; then 
	echo Both strings are equal length.
elif [[ ${#str4} -gt ${#str5} ]] ; then
	echo str4 is longer than str5.
else
	echo str4 is shorter than str5.
fi
echo
echo 3. Checking to see if the strings are the same:
if [[ $str4 == $str5 ]] ; then
	echo They are the same string.
else
	echo They are different.
fi
echo

