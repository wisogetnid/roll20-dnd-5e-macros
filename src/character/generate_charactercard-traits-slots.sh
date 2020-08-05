#!/bin/bash

CD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

slot=${2:-9}

for slot in $(eval echo "{0..$slot}")
do
 printf "**trait$slot**"
 printf "\n\n\`\`\`\n"
 cat $CD/traits-slots.txt | sed "s/<<slot>>/$slot/g"
 printf "\n\`\`\`\n\n"
done
