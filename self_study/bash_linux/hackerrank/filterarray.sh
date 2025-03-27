#!/bin/bash
arr=(${arr[@]/*[aA]*/})
echo "${arr[@]}"
