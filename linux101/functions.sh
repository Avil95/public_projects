#!/bin/bash

function f1
{
       echo "hello from f1()"
}

function f2
{
       echo "hello from f2()"
}

function f3
{
       echo "hello from f3()"
}

echo "Please provide a number 1-3:"
read inp

while [[ "$inp" != "1" && "$inp" != "2" && "$inp" != "3" ]]
do
	echo "Error: please provide a number 1-3"
	read inp
done

#case "$inp" in
#       1) f1 ;;
#       2) f2 ;;
#       3) f3 ;;
#       *) break ;;
#esac

echo "Executing f1 or f2 or f3 based on your input:"
echo $inp
f${inp}
