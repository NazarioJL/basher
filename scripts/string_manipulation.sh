#!/usr/bin/env bash

# Split string by delimiter using 'readarray'
my_str="aa:bb:cc"
echo "Before splitting string: ${my_str}"

delimiter=':'
readarray -d ${delimiter} -t result <<<"${my_str}"

echo "${result[*]}"

# Split by using bash matching
result=()
my_str_2="ee:ff:gg"  # This method destroys the string

while [[ $my_str_2 != $_part ]]; do
  _part=${my_str_2%%:*}  # Match until the delimiter to get the first part
  my_str_2=${my_str_2#$_part:}  # Remove _part from the string
  result+=("${_part}")
done

echo "${result[*]}"

# Remove whitespace from string
my_str="This has  a lot of space "
without_space=$(echo "${my_str}" | tr -d ' ')
echo "${without_space}"
