#!/bin/bash

[[ $# -eq 0 ]] && echo "Please provide an input argument."

[[ $1 != "" ]] && echo "The argument you provided was ${1}"
