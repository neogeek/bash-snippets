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

if [ -f ./snippets/if_statements.sh ]; then

    echo "./snippets/if_statements.sh exists"

fi

if [ ! -f ./snippets/if_else_statements.sh ]; then

    echo "./snippets/if_else_statements.sh does not exist"

fi
