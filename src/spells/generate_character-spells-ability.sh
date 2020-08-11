#!/bin/bash

CD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

level=$1

if [ -z "$level" ]
  then
    echo For which max level of spells [1 - 9]?
    read level
fi

printf "\n\n\`\`\`\n"
cat $CD/spells-ability-cantrips.txt

for level in $(eval echo "{1..$level}")
do
 printf "\n"
 cat $CD/spells-ability.txt | sed "s/<<level>>/$level/g"
done

printf "}}"
printf "\n\`\`\`\n\n"
