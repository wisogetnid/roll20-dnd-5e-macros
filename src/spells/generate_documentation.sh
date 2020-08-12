#!/bin/bash

CD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

level=${1:-1}

OUTPUT_FOLDER_BASE=documentation
OUTPUT_FOLDER_CHARACTER="$OUTPUT_FOLDER_BASE/character"
OUTPUT_FILE_CHARACTER_SPELLS="doc_character-spells_level-$level.md"
OUTPUT_PATH_CHARACTER_SPELLS="./$OUTPUT_FOLDER_CHARACTER/$OUTPUT_FILE_CHARACTER_SPELLS"

cat $CD/spells-ability-explanation.md >> $OUTPUT_FILE_CHARACTER_SPELLS
$CD/generate_character-spells-ability.sh $level >> $OUTPUT_FILE_CHARACTER_SPELLS
cat $CD/spellcard-slots-explanation.md >> $OUTPUT_FILE_CHARACTER_SPELLS
$CD/generate_spellcard-slots.sh cantrip >> $OUTPUT_FILE_CHARACTER_SPELLS
for level in $(eval echo "{1..$level}")
do
 $CD/generate_spellcard-slots.sh $level >> $OUTPUT_FILE_CHARACTER_SPELLS
done

echo "move generated level $level file to $OUTPUT_PATH_CHARACTER_SPELLS"
mkdir -p $OUTPUT_FOLDER_CHARACTER
mv $OUTPUT_FILE_CHARACTER_SPELLS $OUTPUT_PATH_CHARACTER_SPELLS
