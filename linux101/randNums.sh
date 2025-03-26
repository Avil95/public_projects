#!/bin/bash

[[ $# -ne 1 ]] && echo "Please provide an argument."

ARGAPPRAND="$1$RANDOM"

echo $ARGAPPRAND
