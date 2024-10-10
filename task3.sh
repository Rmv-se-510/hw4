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
echo "$stepa"





