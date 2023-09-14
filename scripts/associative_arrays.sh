#!/usr/bin/env bash

declare -A my_map=(
  ["key_1"]="value_1"
  ["key_2"]="value_2"
)

# Get a value by key
echo "${my_map["key_1"]}"

echo "${my_map["does_not_exist"]}"  # This will return nothing

# Check existence of key
keys=("key_1" "non_existent_key")

for key in "${keys[@]}"
do
  echo "Testing: ${key}"
  [[ -n "${my_map[$key]}" ]] && echo "${key} exists" || echo "${key} does not exist"
done