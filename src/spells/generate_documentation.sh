#!/bin/bash

CD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

OUTPUT_FOLDER_BASE=documentation
OUTPUT_FOLDER_CHARACTER="$OUTPUT_FOLDER_BASE/character"
OUTPUT_FILE_CHARACTER_SPELLS_PREFIX=doc_character-spells_level-1.md
OUTPUT_PATH_CHARACTER_SPELLS="./$OUTPUT_FOLDER_CHARACTER/$OUTPUT_FILE_CHARACTER_SPELLS_PREFIX"

cat $CD/spells-ability-explanation.md >> $OUTPUT_FILE_CHARACTER_SPELLS_PREFIX
$CD/generate_character-spells-ability.sh 2 >> $OUTPUT_FILE_CHARACTER_SPELLS_PREFIX
cat $CD/spellcard-slots-explanation.md >> $OUTPUT_FILE_CHARACTER_SPELLS_PREFIX
$CD/generate_spellcard-slots.sh cantrip >> $OUTPUT_FILE_CHARACTER_SPELLS_PREFIX
for level in $(eval echo "{1..2}")
do
 $CD/generate_spellcard-slots.sh $level >> $OUTPUT_FILE_CHARACTER_SPELLS_PREFIX
done

echo "move generated file to $OUTPUT_PATH_CHARACTER_SPELLS"
mkdir -p $OUTPUT_FOLDER_CHARACTER
mv $OUTPUT_FILE_CHARACTER_SPELLS_PREFIX $OUTPUT_PATH_CHARACTER_SPELLS
