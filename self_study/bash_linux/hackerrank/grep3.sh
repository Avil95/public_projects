#!/bin/bash
# display the lines that don't have the word "that" in them (case insensitive)
grep -wvi "that" $1
