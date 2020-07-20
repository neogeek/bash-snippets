#!/bin/bash

declare -a FRUITS

# Declare an array as a space seperated list.
FRUITS=(grapefruit pineapple avocado)

echo "${FRUITS[@]}"

printf "There are %i fruits in the array." "${#FRUITS[@]}"

for FRUIT in "${FRUITS[@]}"
do

	echo "${FRUIT}"

done

# Add value to existing array.
FRUITS+=(blueberries)

echo "${FRUITS[@]}"

OTHER_FRUITS=(apple pomegranate mango)

# Add another array to the end of an exisiting array.
FRUITS+=("${OTHER_FRUITS[@]}")

echo "${FRUITS[@]}"

SENTENCE="This is a sample sentence."

# Split string on spaces.
WORDS=("${SENTENCE// / }")

echo "${SENTENCE}"

for WORD in "${WORDS[@]}"
do

	echo "${WORD}"

done
