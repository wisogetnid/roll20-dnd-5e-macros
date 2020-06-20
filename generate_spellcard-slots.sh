#!/bin/bash

echo Generate spellcard entry. \n For which level [cantrip, 1 - 9]?
read level
echo For which slot [0 - 9]
read slot

echo ----------- copy below ----------------
sed "s/<<level>>/$level/g" spells/spellcard-slots.txt | sed "s/<<slot>>/$slot/g"
echo ----------- copy above----------------
