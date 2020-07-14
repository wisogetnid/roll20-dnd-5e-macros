#!/bin/bash

# Paths
PATH_CHARACTER_SPELLS=src/spells
PATH_CHARACTER_SPELL_ABILITIES=$PATH_CHARACTER_SPELLS/spells-ability.txt

export PATH_CHARACTER_SPELLS
export PATH_CHARACTER_SPELL_ABILITIES

./generate_character-spells-ability.sh
./generate_spellcard-slots.sh
