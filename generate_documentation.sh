#!/bin/bash

./src/character/generate_documentation.sh

for level in {1..9}
do
 ./src/spells/generate_documentation.sh $level
done
