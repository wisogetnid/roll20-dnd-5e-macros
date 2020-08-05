#!/bin/bash

CD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

slot=$1

if [ -z "$slot" ]
  then
    echo For which slot [0 - 9]
    read slot
fi

printf "\n\n\`\`\`\n"
sed "s/<<slot>>/$slot/g" $CD/traits-slots.txt
printf "\n\`\`\`\n\n"
