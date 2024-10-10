#!/bin/bash

# Step a: Find files having word "sample" and having atleast 3 occurences of "CSC510"
files=$(grep -rl "sample" dataset1 | xargs  grep -o "CSC510" | uniq -c | grep -E -v "(1 )|(2 )" | grep -oE "dataset1/file_[0-9]+")

# Step b: Find the files in sorted order, i.e. by count of word "CSC510" in descending order and then by size
# Using stable sort concept, we will first sort the files by their size and then count of occurence in descending order
sorted_file=$(echo $files | xargs ls -l | sort -k5,5 | grep -oE "dataset1/file_[0-9]+" |  xargs grep -o "CSC510" | uniq -c | sort -k1,1nr | grep -oE "dataset1/file_[0-9]+")
echo $sorted_file


sorted_file=$(echo $files | xargs ls -l | gawk '{ print $5, $9 }' | xargs -I{} bash -c 'count=$(grep -o "CSC510" {} | wc -l); echo $count $(ls -l {} | gawk "{print \$5}") {}' | sort -k1,1 -k2,2nr)
# Print the sorted file list
echo $sorted_file