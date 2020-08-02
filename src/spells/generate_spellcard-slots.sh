#!/bin/bash

CD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

level=$1
slot=$2

if [ -z "$level" ]
  then
    echo For which level [cantrip, 1 - 9]?
    read level
fi

if [ -z "$slot" ]
  then
    echo For which slot [0 - 9]
    read slot
fi

printf "\n\n\`\`\`\n"
cat $CD/spellcard-slots.txt | sed "s/<<level>>/$level/g" | sed "s/<<slot>>/$slot/g"
printf "\n\`\`\`\n\n"
