#!/bin/bash

CD=$(dirname $(realpath $0))
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

echo ----------- copy below ----------------
cat $CD/spellcard-slots.txt | sed "s/<<level>>/$level/g" | sed "s/<<slot>>/$slot/g"
echo ----------- copy above ----------------
