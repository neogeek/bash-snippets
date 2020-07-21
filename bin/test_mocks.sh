#!/bin/bash

for SNIPPET_FILE in ./snippets/*.sh; do

    MOCK_FILE="${SNIPPET_FILE%.*}.txt"

    if [[ $(source "${SNIPPET_FILE}") != $(cat "${MOCK_FILE}") ]]; then

        echo "Test for ${SNIPPET_FILE} failed."

        exit 1

    fi

done
