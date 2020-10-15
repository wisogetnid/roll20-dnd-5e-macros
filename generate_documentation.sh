#!/bin/bash

rm -rf ./documentation
echo "deleted existing documentation"

./src/character/generate_documentation.sh
./src/monster-template/generate_documentation.sh

for level in {1..9}
do
 ./src/spells/generate_documentation.sh $level
done

echo "generated full documentation"
