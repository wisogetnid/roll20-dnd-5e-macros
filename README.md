# Roll20 DnD 5e macros
A set of scripts and templates to create Dungeons and Dragons (5th edition) macros for roll20 - optimised for the Roll20 official character sheet.  

The scripts might be useful to Roll20 DnD GMs and players alike - especially new ones (like me). They enhance the Roll20 experience by providing macro based abilities to display relevant information for characters, NPCs and monsters.

## Shout out to the Roll20 Community
A lot of the macro logic is based on work of other people, mostly found in the [Roll20 community](https://app.roll20.net/forum/). I intend to give credit to the various people for their work...but I might miss some. Please accept my excuse, should you be amongst them. =o)

## How to use the scripts
Interaction with `generate_*` scripts in the root folder should be enough to create macros which can then be copy & pasted into Roll20 ability text boxes.

### Character Spell List
Based on the work of [Ed S.](https://app.roll20.net/users/772714), described in [this forum post](https://app.roll20.net/forum/permalink/5629364/). Read through their post to understand the basic setup if you intend to use the scripts below.

#### Character Spells Ability
Navigate to the root folder and execute `./generate_character-spells-ability.sh` in your shell of choice.  
**Params:** There are currently no parameters to this command

#### Spellcard Slots
Navigate to the root folder and execute `./generate_spellcard-slots.sh` in your shell of choice.  
**Params:** Option to add _spell level [cantrip, 1-9]_ and _slot number [0-99]_ as arguments to the command for direct macro generation. `./generate_spellcard-slots.sh cantrip 2` prints the spellcard macro for the cantrip spellcard (which would be spellcard0), ability slot $2.