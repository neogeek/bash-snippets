#!/bin/bash

declare -a FRUITS

# Declare array as a space seperated list
FRUITS=(apple pear banana)

for FRUIT in "${FRUITS[@]}"
do

	echo "${FRUIT}"

done
