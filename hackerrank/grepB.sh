#!/bin/bash
nums=$(</dev/stdin)
echo "$nums" | grep "\([0-9]\) *\1"
