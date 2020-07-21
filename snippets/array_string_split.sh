#!/bin/bash

SENTENCE="This is a sample sentence."

# Split string on spaces.
IFS=' ' read -r -a WORDS <<<"${SENTENCE}"

# Print out all values of an array.
echo "${WORDS[@]}"

# Iterate through each value of an array.
for WORD in "${WORDS[@]}"; do
    echo "${WORD}"
done
