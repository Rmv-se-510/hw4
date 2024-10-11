#!/bin/bash

# To check the number of fields
# gawk -F '{ print NF }' titanic.csv
# to check on specific line (lets say 2)
# gawk -F 'NR == 2 {print NF}' titanic.csv

# STEP A
# since the first field has 12 records, we take records from second field (NR >= 2)
# the passengers class should be 2, so $3 == 2
# the passengers should have embarked to SouthAmpton so we use $13 ~ /S/
stepa=$(gawk -F, 'NR >= 2 && $3 == 2 && $13 ~ /S/ {print $0}' titanic.csv)
# echo "$stepa"

# STEP B
# replace male with M and replace female with F
# we will use sed command for subsitution.
# sicne there are multiple replacements we will use -e flag
stepb=$(echo "$stepa" | sed -e 's/,male,/,M,/' -e 's/,female,/,F,/')
#echo "$stepb"

#STEP C
# We want to calculate average age of the passengers from step b
# First we will initialize the sum_age and count variable as 0 
# then we will check for the condition whether age is missing or not.
# if it is not missing increment counter, sum the age and print that line
# finally check if the count is not 0, if not print average age.
stepc=$(echo "$stepb" |  gawk -F, 'BEGIN {count = 0; sum_age = 0} {if ($7 != "") {count+=1; sum_age+=$7; print $0}} END {if (count > 0) print "Average age: " sum_age/count; else print "No valid data"}')
echo "$stepc"




