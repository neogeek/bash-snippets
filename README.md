# bash-snippets

## Array

```bash
#!/bin/bash

declare -a FRUITS

# Declare array as a space seperated list
FRUITS=(grapefruit pineapple avocado)

for FRUIT in "${FRUITS[@]}"
do

	echo "${FRUIT}"

done
```

## If Statements

```bash
#!/bin/bash

EMPTY=""

if [ -z "${EMPTY}" ]; then

    echo "Variable is empty."

fi
```
