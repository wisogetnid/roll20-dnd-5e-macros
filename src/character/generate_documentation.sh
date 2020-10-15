#!/bin/bash

CD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

OUTPUT_FOLDER_BASE=documentation
OUTPUT_FOLDER_CHARACTER="$OUTPUT_FOLDER_BASE/character"
OUTPUT_FILE_CHARACTER_TRAITS_PREFIX=doc_character-traits.md
OUTPUT_PATH_CHARACTER_TRAITS="./$OUTPUT_FOLDER_CHARACTER/$OUTPUT_FILE_CHARACTER_TRAITS_PREFIX"

cat $CD/traits-ability-explanation.md >> $OUTPUT_FILE_CHARACTER_TRAITS_PREFIX
$CD/generate_character-traits-ability.sh >> $OUTPUT_FILE_CHARACTER_TRAITS_PREFIX
cat $CD/charactercard-traits-slots-explanation.md >> $OUTPUT_FILE_CHARACTER_TRAITS_PREFIX
$CD/generate_charactercard-traits-slots.sh >> $OUTPUT_FILE_CHARACTER_TRAITS_PREFIX

mkdir -p $OUTPUT_FOLDER_CHARACTER
mv $OUTPUT_FILE_CHARACTER_TRAITS_PREFIX $OUTPUT_PATH_CHARACTER_TRAITS
echo "moved generated file to $OUTPUT_PATH_CHARACTER_TRAITS"
