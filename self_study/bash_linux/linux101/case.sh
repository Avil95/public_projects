#!/bin/bash

[[ $# -ne 1 ]] && echo "Please provide a number 1-12"

case $1 in
	1) echo "1: January";;
	2) echo "2: February";;
	3) echo "3: March";;
	4) echo "4: April";;
	5) echo "5: May";;
	6) echo "6: June";;
	7) echo "7: July";;
	8) echo "8: August";;
	9) echo "9: September";;
	10) echo "10: October";;
	11) echo "11: November";;
	12) echo "12: December";;
	*) echo "Invalid argument provided. Please provide a number 1-12."
esac
