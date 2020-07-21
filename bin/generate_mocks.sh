#!/bin/bash

for SNIPPET_FILE in ./snippets/*.sh; do

    MOCK_FILE="${SNIPPET_FILE%.*}.txt"

    source "${SNIPPET_FILE}" >"${MOCK_FILE}"

done
