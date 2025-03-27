#!/bin/bash

# input validation

ERRMSG="Please provide the correct arguments (use -h option for help)"
if [[ $1 == "-h" ]] ; then	
	echo "usage (operator, first arg, second arg): 
	./bcalc.sh <a/s/m/d> <#> <#>
	a: add
	s: subtract
	m: multiply
	d: divide"
elif [[ $# -lt 3 ]] ; then  echo $ERRMSG
elif [[ $1 != a && $1 != s && $1 != m && $1 != d ]] ; then echo $ERRMSG
else 
	case $1 in
	a) echo $(($2+$3)) ;;
	s) echo $(($2-$3)) ;;
	m) echo $(($2*$3)) ;;
	d) echo $(($2/$3)) ;;
	*) break ;;
	esac
fi

