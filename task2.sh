#!/bin/bash

cd dataset1

# Step a: Find files having word "sample" and having atleast 3 occurences of "CSC510"
files=$(grep -rl "sample" | xargs  grep -o "CSC510" | uniq -c | grep -E -v "(1 )|(2 )" | grep -oE "file_[0-9]+")
echo "Output from Steps: $files"
