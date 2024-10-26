#!/bin/bash

# Get the current date
current_date=$(date +%Y-%m-%d)

# Get the previous month
previous_month=$(date -d "$current_date - 1 month" +%Y-%m)

# Extract the year and month from the previous month
year=$(echo "$previous_month" | cut -d '-' -f 1)
month=$(echo "$previous_month" | cut -d '-' -f 2)

# Combine year and month into the desired format
yyyymm="$year$month"

echo "access.log-$yyyymm*"
