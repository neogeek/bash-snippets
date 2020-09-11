#!/bin/bash

# Loop through files in directory.
find ./snippets -type f -name "*.sh" -or -name "*.txt" | sort -n | while read -r FILE; do

    echo "${FILE}"

done
