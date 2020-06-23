#!/bin/bash

slot=$1

if [ -z "$slot" ]
  then
    echo For which slot [0 - 9]
    read slot
fi

echo ----------- copy below ----------------
sed "s/<<slot>>/$slot/g" character/traits-slots.txt
echo ----------- copy above ----------------
