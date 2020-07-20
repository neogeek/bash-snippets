#!/bin/bash

EMPTY=""

if [ -z "${EMPTY}" ]; then

    echo "Variable is empty."

fi

NUMBER=10

if [ "${NUMBER}" -gt 0 ]; then

    echo "Number is greater than 0."

fi

if [ "${NUMBER}" -lt 100 ]; then

    echo "Number is less than 100."

fi
