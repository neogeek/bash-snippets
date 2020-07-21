#!/bin/bash

# Declare a new array variable.
declare -a FRUITS

# Populate an array with a space seperated list.
FRUITS=(grapefruit pineapple avocado)

# Print out all values of an array.
echo "${FRUITS[@]}"

# Print out the length of an array.
printf "There are %i fruits in the array.\n" "${#FRUITS[@]}"

# Iterate through each value of an array.
for FRUIT in "${FRUITS[@]}"; do
    echo "${FRUIT}"
done
