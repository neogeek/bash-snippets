#!/bin/bash

find ./snippets -type f -name "*.sh" | sort -n | while read -r SNIPPET_FILE; do

    MOCK_FILE="${SNIPPET_FILE%.*}.txt"

    if [[ $(source "${SNIPPET_FILE}") != $(cat "${MOCK_FILE}") ]]; then

        echo "Test for ${SNIPPET_FILE} failed."

        exit 1

    fi

done
