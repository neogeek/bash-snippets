#!/bin/bash

# Declare a new array variable.
declare -a FRUITS

# Populate an array with a space seperated list.
FRUITS=(grapefruit pineapple avocado)

# Add value to existing array.
FRUITS+=(blueberries)

# Print out all values of an array.
echo "${FRUITS[@]}"

# Declare another array as a space seperated list.
OTHER_FRUITS=(apple pomegranate mango)

# Add another array to the end of an exisiting array.
FRUITS+=("${OTHER_FRUITS[@]}")

# Print out all values of an array.
echo "${FRUITS[@]}"
