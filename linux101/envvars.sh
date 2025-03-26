#!/bin/bash

INPUT=""
echo "Please select 1 or 2:"
read INPUT
while [[ "$INPUT" !=  "1" && "$INPUT" !=  "2" ]]
do 
	echo "Error: Please select only 1 or 2:"
	read INPUT
done

[[ $INPUT -eq 1 ]] && export EVAR="Yes"
[[ $INPUT -eq 2 ]] && export EVAR="No"

echo "The value of EVAR is $EVAR"
