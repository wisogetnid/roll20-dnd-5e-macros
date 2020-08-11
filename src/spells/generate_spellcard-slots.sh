#!/bin/bash

CD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

level=$1
slot=${2:-9}

if [ -z "$level" ]
  then
    echo For which level [cantrip, 1 - 9]?
    read level
fi

for slot in $(eval echo "{0..$slot}")
do
 printf "**Character \"spellcard$level\", Ability \"spell$slot\"**"
 printf "\n\n\`\`\`\n"
 cat $CD/spellcard-slots.txt | sed "s/<<level>>/$level/g" | sed "s/<<slot>>/$slot/g"
 printf "\n\`\`\`\n\n"
done

