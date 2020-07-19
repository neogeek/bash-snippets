# bash-snippets

## array

```bash
#!/bin/bash

declare -a WORDS

# Declare array as a space seperated list
WORDS=(apple pear banana)

for WORD in "${WORDS[@]}"
do

	echo "${WORD}"

done
```
