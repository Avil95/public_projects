#!/bin/bash
uniq -ci $1 | sed 's/^[[:space:]]*//'
