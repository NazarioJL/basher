#!/usr/bin/env bash

# Creating an array
my_array=(1 2 3 4)  # Note: spaces are used to delimit elements

# Adding to an array
my_array+=(5)

# Printing the array
echo "my_array=${my_array[*]}"

# Getting the length of an array
echo "The length of my_array is: ${#my_array[*]}"

# Appending another array
another_array=(6 7 8)
my_array+=("${another_array[@]}")

echo "Appended: ${my_array[*]}"

# Creating array from output
readarray -t local_files < <(ls)
echo "Result of 'ls': ${local_files[*]}"

# Mixed array
mixed_array=("foo" 42)
echo "Mixed array: ${mixed_array[*]}"
