#!/bin/bash

CD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

OUTPUT_FOLDER="documentation/monster"
OUTPUT_FILE=doc_monster-template-abilities.md
OUTPUT_PATH="./$OUTPUT_FOLDER/$OUTPUT_FILE"

cat $CD/traits-ability-explanation.md >> $OUTPUT_FILE

mkdir -p $OUTPUT_FOLDER
mv $OUTPUT_FILE $OUTPUT_PATH
echo "moved generated file to $OUTPUT_PATH"
