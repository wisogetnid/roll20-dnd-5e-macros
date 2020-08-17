# Character Spells Ability
Print an interactive list of the selected characters spells in the chat.

## References/Tributes
This script is heavily based on the work of [Ed S.](https://app.roll20.net/users/772714), described in [this forum post](https://app.roll20.net/forum/permalink/5629364/). Should this short documentation be insufficient, I strongly recommend you to read through those posts.

## How it works
The basic idea behind the spell list macro (and others) is to create generic Characters with Abilities to display information of selected tokens (Characters or NPCs). These Abilities are using only attibutes with the `Selected` prefix or static text.  
In the case of a spell list, there are two variables for above mentioned attributes. The first is the spell level, the second is the index of the spell in the _Spells_ section (under _Character Sheet_).  
The generic Characters are used to reflect all possible levels of spells a playable Character could know - one Character for each level, including one for cantrips. Each of these "spell level" Characters should have at least as many "spell display" Abilities as the highest number of known spells at this level among each playable Characters.

## "Spells" Ability on playable Character sheet

### Manual adjustments to the macros
You want to manually remove lines of spells to reflect the number of spells your character knows. Say your character knows 4 cantrips, remove 6 cantrip lines starting from the bottom up - from the line ending on `(~spellcardcantrip|spell9)` to and including the line ending on `(~spellcardcantrip|spell4)`.

### Macro to copy
Create a new "Spells" ability to any playable Character to display their spell list. 
