#!/bin/bash

CD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

level=$1
slot=$2

if [ -z "$level" ]
  then
    echo For which level [cantrip, 1 - 9]?
    read level
fi

for slot in {0..9}
do
 printf "**spellcard$slot**"
 printf "\n\n\`\`\`\n"
 cat $CD/spellcard-slots.txt | sed "s/<<level>>/$level/g" | sed "s/<<slot>>/$slot/g"
 printf "\n\`\`\`\n\n"
done

