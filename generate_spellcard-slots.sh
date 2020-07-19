#!/bin/bash

source ./paths.sh

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
cat $PATH_CHARACTER_SPELLS/spellcard-slots.txt | sed "s/<<level>>/$level/g" | sed "s/<<slot>>/$slot/g"
echo ----------- copy above ----------------
