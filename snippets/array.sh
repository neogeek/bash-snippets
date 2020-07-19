#!/bin/bash

declare -a FRUITS

# Declare an array as a space seperated list.
FRUITS=(grapefruit pineapple avocado)

for FRUIT in "${FRUITS[@]}"
do

	echo "${FRUIT}"

done

SENTENCE="This is a sample sentence."

# Split string on spaces.
WORDS=("${SENTENCE// / }")

echo "${SENTENCE}"

for WORD in "${WORDS[@]}"
do

	echo "${WORD}"

done
