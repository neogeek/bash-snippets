# Bash Snippets

> A collection of code snippets I found useful while coding in bash.

- [Array](#Array)
- [Cli Flags](#Cli%20Flags)
- [If Statements](#If%20Statements)

## Array
```bash
#!/bin/bash

declare -a FRUITS

# Declare an array as a space seperated list.
FRUITS=(grapefruit pineapple avocado)

for FRUIT in "${FRUITS[@]}"
do

	echo "${FRUIT}"

done

SENTENCE="This is a sample sentence."

# Split string on spaces.
WORDS=(${SENTENCE// / })

echo "${SENTENCE}"

for WORD in "${WORDS[@]}"
do

	echo "${WORD}"

done

```

## Cli Flags
```bash
#!/bin/bash

args=("${@// /}")

for arg in "${args[@]}"
do

    case $arg in

        -v | --version ) echo "Version flag."; exit;;
        -h | --help ) echo "Help flag."; exit;;

        ?* ) printf "Invalid option %s\n\n" "${arg}"; exit;;

    esac

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
