#!/bin/bash

# Split string on spaces.
WORDS=("${SENTENCE// / }")

# Print out all values of an array.
echo "${SENTENCE}"

# Iterate through each value of an array.
for WORD in "${WORDS[@]}"
do
	echo "${WORD}"
done
