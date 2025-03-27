#!/bin/bash
# display the lines that have the word "the" in them
var=$(</dev/stdin)
echo "$var" > tempfile
grep -iw 'the\|that\|then\|those' tempfile

