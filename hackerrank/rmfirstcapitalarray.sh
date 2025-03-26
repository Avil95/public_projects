#!/bin/bash
mapfile arr
for elem in ${arr[@]}
do
    echo -n "${elem} " | sed 's/[A-Z]/\./'
done
