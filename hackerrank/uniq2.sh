#!/bin/bash
uniq -c $1 | sed 's/^[[:space:]]*//'
