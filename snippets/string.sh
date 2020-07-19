#!/bin/bash

# Replace a word in a string.
echo "This is just a test." | sed s/just/only/

# Replace a pattern in a string.
echo "1 is the loneliest number there will ever be." | sed s/[0-9]/One/

# Return pattern match in a string.
echo "There are (6) new items." | grep -o '[0-9]'
