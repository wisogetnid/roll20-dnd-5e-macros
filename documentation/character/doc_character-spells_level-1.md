# Character Spells Ability
Print an interactive list of the selected characters spells in the chat.

## References/Tributes
This script is heavily based on the work of [Ed S.](https://app.roll20.net/users/772714), described in [this forum post](https://app.roll20.net/forum/permalink/5629364/).

## How it works
...some blurb here to explain things

## "Spells" Ability on playable Character sheet

### Adjustments
You want to manually remove lines of spells to reflect the number of spells your character knows. Say your character knows 4 cantrips, remove 6 cantrip lines starting from the bottom up - from the line ending on `(~spellcard0|$9)` to and including the line ending on `(~spellcard0|$4)`.

### Macro
Add following ability to any playable Character to display their spell list. 

```
/w "@{selected|character_name}" &{template:atk} {{desc=***@{selected|character_name} Spells***
___________________________

**Cantrips**
[@{Selected|repeating_spell-cantrip_$0_spellname}](~spellcard0|$0)
[@{Selected|repeating_spell-cantrip_$1_spellname}](~spellcard0|$1)
[@{Selected|repeating_spell-cantrip_$2_spellname}](~spellcard0|$2)
[@{Selected|repeating_spell-cantrip_$3_spellname}](~spellcard0|$3)
[@{Selected|repeating_spell-cantrip_$4_spellname}](~spellcard0|$4)
[@{Selected|repeating_spell-cantrip_$5_spellname}](~spellcard0|$5)
[@{Selected|repeating_spell-cantrip_$6_spellname}](~spellcard0|$6)
[@{Selected|repeating_spell-cantrip_$7_spellname}](~spellcard0|$7)
[@{Selected|repeating_spell-cantrip_$8_spellname}](~spellcard0|$8)
[@{Selected|repeating_spell-cantrip_$9_spellname}](~spellcard0|$9)

** 1st Level - @{selected|lvl1_slots_expended}/@{selected|lvl1_slots_total} slots remaining**
(@{selected|repeating_spell-1_$0_spellprepared}) [@{Selected|repeating_spell-1_$0_spellname}](~spellcard1|$0)
(@{selected|repeating_spell-1_$1_spellprepared}) [@{Selected|repeating_spell-1_$1_spellname}](~spellcard1|$1)
(@{selected|repeating_spell-1_$2_spellprepared}) [@{Selected|repeating_spell-1_$2_spellname}](~spellcard1|$2)
(@{selected|repeating_spell-1_$3_spellprepared}) [@{Selected|repeating_spell-1_$3_spellname}](~spellcard1|$3)
(@{selected|repeating_spell-1_$4_spellprepared}) [@{Selected|repeating_spell-1_$4_spellname}](~spellcard1|$4)
(@{selected|repeating_spell-1_$5_spellprepared}) [@{Selected|repeating_spell-1_$5_spellname}](~spellcard1|$5)
(@{selected|repeating_spell-1_$6_spellprepared}) [@{Selected|repeating_spell-1_$6_spellname}](~spellcard1|$6)
(@{selected|repeating_spell-1_$7_spellprepared}) [@{Selected|repeating_spell-1_$7_spellname}](~spellcard1|$7)
(@{selected|repeating_spell-1_$8_spellprepared}) [@{Selected|repeating_spell-1_$8_spellname}](~spellcard1|$8)
(@{selected|repeating_spell-1_$9_spellprepared}) [@{Selected|repeating_spell-1_$9_spellname}](~spellcard1|$9)

** 2nd Level - @{selected|lvl2_slots_expended}/@{selected|lvl2_slots_total} slots remaining**
(@{selected|repeating_spell-2_$0_spellprepared}) [@{Selected|repeating_spell-2_$0_spellname}](~spellcard2|$0)
(@{selected|repeating_spell-2_$1_spellprepared}) [@{Selected|repeating_spell-2_$1_spellname}](~spellcard2|$1)
(@{selected|repeating_spell-2_$2_spellprepared}) [@{Selected|repeating_spell-2_$2_spellname}](~spellcard2|$2)
(@{selected|repeating_spell-2_$3_spellprepared}) [@{Selected|repeating_spell-2_$3_spellname}](~spellcard2|$3)
(@{selected|repeating_spell-2_$4_spellprepared}) [@{Selected|repeating_spell-2_$4_spellname}](~spellcard2|$4)
(@{selected|repeating_spell-2_$5_spellprepared}) [@{Selected|repeating_spell-2_$5_spellname}](~spellcard2|$5)
(@{selected|repeating_spell-2_$6_spellprepared}) [@{Selected|repeating_spell-2_$6_spellname}](~spellcard2|$6)
(@{selected|repeating_spell-2_$7_spellprepared}) [@{Selected|repeating_spell-2_$7_spellname}](~spellcard2|$7)
(@{selected|repeating_spell-2_$8_spellprepared}) [@{Selected|repeating_spell-2_$8_spellname}](~spellcard2|$8)
(@{selected|repeating_spell-2_$9_spellprepared}) [@{Selected|repeating_spell-2_$9_spellname}](~spellcard2|$9)
}}

```

## "spellcard" Abilities on generic Character sheet
add abilitites to the spellcard character

**spellcard0**

```
/w "@{selected|character_name}" &{template:spell} {{level=@{selected|repeating_spell-1_$0_spellschool} @{selected|repeating_spell-1_$0_spelllevel}}} {{name=@{selected|repeating_spell-1_$0_spellname}}} {{castingtime=@{selected|repeating_spell-1_$0_spellcastingtime}}} {{range=@{selected|repeating_spell-1_$0_spellrange}}} {{target=@{selected|repeating_spell-1_$0_spelltarget}}} @{selected|repeating_spell-1_$0_spellritual} @{selected|repeating_spell-1_$0_spellconcentration} @{selected|repeating_spell-1_$0_spellcomp_v} @{selected|repeating_spell-1_$0_spellcomp_s} {@{selected|repeating_spell-1_$0_spellcomp_m}} {{material=@{selected|repeating_spell-1_$0_spellcomp_materials}}} {{duration=@{selected|repeating_spell-1_$0_spellduration}}} {{description=@{selected|repeating_spell-1_$0_spelldescription} 
[Spell List](~selected|Spells)}} {{athigherlevels=@{selected|repeating_spell-1_$0_spellathigherlevels}}} {{charname=charname}}

```

**spellcard1**

```
/w "@{selected|character_name}" &{template:spell} {{level=@{selected|repeating_spell-1_$1_spellschool} @{selected|repeating_spell-1_$1_spelllevel}}} {{name=@{selected|repeating_spell-1_$1_spellname}}} {{castingtime=@{selected|repeating_spell-1_$1_spellcastingtime}}} {{range=@{selected|repeating_spell-1_$1_spellrange}}} {{target=@{selected|repeating_spell-1_$1_spelltarget}}} @{selected|repeating_spell-1_$1_spellritual} @{selected|repeating_spell-1_$1_spellconcentration} @{selected|repeating_spell-1_$1_spellcomp_v} @{selected|repeating_spell-1_$1_spellcomp_s} {@{selected|repeating_spell-1_$1_spellcomp_m}} {{material=@{selected|repeating_spell-1_$1_spellcomp_materials}}} {{duration=@{selected|repeating_spell-1_$1_spellduration}}} {{description=@{selected|repeating_spell-1_$1_spelldescription} 
[Spell List](~selected|Spells)}} {{athigherlevels=@{selected|repeating_spell-1_$1_spellathigherlevels}}} {{charname=charname}}

```

**spellcard2**

```
/w "@{selected|character_name}" &{template:spell} {{level=@{selected|repeating_spell-1_$2_spellschool} @{selected|repeating_spell-1_$2_spelllevel}}} {{name=@{selected|repeating_spell-1_$2_spellname}}} {{castingtime=@{selected|repeating_spell-1_$2_spellcastingtime}}} {{range=@{selected|repeating_spell-1_$2_spellrange}}} {{target=@{selected|repeating_spell-1_$2_spelltarget}}} @{selected|repeating_spell-1_$2_spellritual} @{selected|repeating_spell-1_$2_spellconcentration} @{selected|repeating_spell-1_$2_spellcomp_v} @{selected|repeating_spell-1_$2_spellcomp_s} {@{selected|repeating_spell-1_$2_spellcomp_m}} {{material=@{selected|repeating_spell-1_$2_spellcomp_materials}}} {{duration=@{selected|repeating_spell-1_$2_spellduration}}} {{description=@{selected|repeating_spell-1_$2_spelldescription} 
[Spell List](~selected|Spells)}} {{athigherlevels=@{selected|repeating_spell-1_$2_spellathigherlevels}}} {{charname=charname}}

```

**spellcard3**

```
/w "@{selected|character_name}" &{template:spell} {{level=@{selected|repeating_spell-1_$3_spellschool} @{selected|repeating_spell-1_$3_spelllevel}}} {{name=@{selected|repeating_spell-1_$3_spellname}}} {{castingtime=@{selected|repeating_spell-1_$3_spellcastingtime}}} {{range=@{selected|repeating_spell-1_$3_spellrange}}} {{target=@{selected|repeating_spell-1_$3_spelltarget}}} @{selected|repeating_spell-1_$3_spellritual} @{selected|repeating_spell-1_$3_spellconcentration} @{selected|repeating_spell-1_$3_spellcomp_v} @{selected|repeating_spell-1_$3_spellcomp_s} {@{selected|repeating_spell-1_$3_spellcomp_m}} {{material=@{selected|repeating_spell-1_$3_spellcomp_materials}}} {{duration=@{selected|repeating_spell-1_$3_spellduration}}} {{description=@{selected|repeating_spell-1_$3_spelldescription} 
[Spell List](~selected|Spells)}} {{athigherlevels=@{selected|repeating_spell-1_$3_spellathigherlevels}}} {{charname=charname}}

```

**spellcard4**

```
/w "@{selected|character_name}" &{template:spell} {{level=@{selected|repeating_spell-1_$4_spellschool} @{selected|repeating_spell-1_$4_spelllevel}}} {{name=@{selected|repeating_spell-1_$4_spellname}}} {{castingtime=@{selected|repeating_spell-1_$4_spellcastingtime}}} {{range=@{selected|repeating_spell-1_$4_spellrange}}} {{target=@{selected|repeating_spell-1_$4_spelltarget}}} @{selected|repeating_spell-1_$4_spellritual} @{selected|repeating_spell-1_$4_spellconcentration} @{selected|repeating_spell-1_$4_spellcomp_v} @{selected|repeating_spell-1_$4_spellcomp_s} {@{selected|repeating_spell-1_$4_spellcomp_m}} {{material=@{selected|repeating_spell-1_$4_spellcomp_materials}}} {{duration=@{selected|repeating_spell-1_$4_spellduration}}} {{description=@{selected|repeating_spell-1_$4_spelldescription} 
[Spell List](~selected|Spells)}} {{athigherlevels=@{selected|repeating_spell-1_$4_spellathigherlevels}}} {{charname=charname}}

```

**spellcard5**

```
/w "@{selected|character_name}" &{template:spell} {{level=@{selected|repeating_spell-1_$5_spellschool} @{selected|repeating_spell-1_$5_spelllevel}}} {{name=@{selected|repeating_spell-1_$5_spellname}}} {{castingtime=@{selected|repeating_spell-1_$5_spellcastingtime}}} {{range=@{selected|repeating_spell-1_$5_spellrange}}} {{target=@{selected|repeating_spell-1_$5_spelltarget}}} @{selected|repeating_spell-1_$5_spellritual} @{selected|repeating_spell-1_$5_spellconcentration} @{selected|repeating_spell-1_$5_spellcomp_v} @{selected|repeating_spell-1_$5_spellcomp_s} {@{selected|repeating_spell-1_$5_spellcomp_m}} {{material=@{selected|repeating_spell-1_$5_spellcomp_materials}}} {{duration=@{selected|repeating_spell-1_$5_spellduration}}} {{description=@{selected|repeating_spell-1_$5_spelldescription} 
[Spell List](~selected|Spells)}} {{athigherlevels=@{selected|repeating_spell-1_$5_spellathigherlevels}}} {{charname=charname}}

```

**spellcard6**

```
/w "@{selected|character_name}" &{template:spell} {{level=@{selected|repeating_spell-1_$6_spellschool} @{selected|repeating_spell-1_$6_spelllevel}}} {{name=@{selected|repeating_spell-1_$6_spellname}}} {{castingtime=@{selected|repeating_spell-1_$6_spellcastingtime}}} {{range=@{selected|repeating_spell-1_$6_spellrange}}} {{target=@{selected|repeating_spell-1_$6_spelltarget}}} @{selected|repeating_spell-1_$6_spellritual} @{selected|repeating_spell-1_$6_spellconcentration} @{selected|repeating_spell-1_$6_spellcomp_v} @{selected|repeating_spell-1_$6_spellcomp_s} {@{selected|repeating_spell-1_$6_spellcomp_m}} {{material=@{selected|repeating_spell-1_$6_spellcomp_materials}}} {{duration=@{selected|repeating_spell-1_$6_spellduration}}} {{description=@{selected|repeating_spell-1_$6_spelldescription} 
[Spell List](~selected|Spells)}} {{athigherlevels=@{selected|repeating_spell-1_$6_spellathigherlevels}}} {{charname=charname}}

```

**spellcard7**

```
/w "@{selected|character_name}" &{template:spell} {{level=@{selected|repeating_spell-1_$7_spellschool} @{selected|repeating_spell-1_$7_spelllevel}}} {{name=@{selected|repeating_spell-1_$7_spellname}}} {{castingtime=@{selected|repeating_spell-1_$7_spellcastingtime}}} {{range=@{selected|repeating_spell-1_$7_spellrange}}} {{target=@{selected|repeating_spell-1_$7_spelltarget}}} @{selected|repeating_spell-1_$7_spellritual} @{selected|repeating_spell-1_$7_spellconcentration} @{selected|repeating_spell-1_$7_spellcomp_v} @{selected|repeating_spell-1_$7_spellcomp_s} {@{selected|repeating_spell-1_$7_spellcomp_m}} {{material=@{selected|repeating_spell-1_$7_spellcomp_materials}}} {{duration=@{selected|repeating_spell-1_$7_spellduration}}} {{description=@{selected|repeating_spell-1_$7_spelldescription} 
[Spell List](~selected|Spells)}} {{athigherlevels=@{selected|repeating_spell-1_$7_spellathigherlevels}}} {{charname=charname}}

```

**spellcard8**

```
/w "@{selected|character_name}" &{template:spell} {{level=@{selected|repeating_spell-1_$8_spellschool} @{selected|repeating_spell-1_$8_spelllevel}}} {{name=@{selected|repeating_spell-1_$8_spellname}}} {{castingtime=@{selected|repeating_spell-1_$8_spellcastingtime}}} {{range=@{selected|repeating_spell-1_$8_spellrange}}} {{target=@{selected|repeating_spell-1_$8_spelltarget}}} @{selected|repeating_spell-1_$8_spellritual} @{selected|repeating_spell-1_$8_spellconcentration} @{selected|repeating_spell-1_$8_spellcomp_v} @{selected|repeating_spell-1_$8_spellcomp_s} {@{selected|repeating_spell-1_$8_spellcomp_m}} {{material=@{selected|repeating_spell-1_$8_spellcomp_materials}}} {{duration=@{selected|repeating_spell-1_$8_spellduration}}} {{description=@{selected|repeating_spell-1_$8_spelldescription} 
[Spell List](~selected|Spells)}} {{athigherlevels=@{selected|repeating_spell-1_$8_spellathigherlevels}}} {{charname=charname}}

```

**spellcard9**

```
/w "@{selected|character_name}" &{template:spell} {{level=@{selected|repeating_spell-1_$9_spellschool} @{selected|repeating_spell-1_$9_spelllevel}}} {{name=@{selected|repeating_spell-1_$9_spellname}}} {{castingtime=@{selected|repeating_spell-1_$9_spellcastingtime}}} {{range=@{selected|repeating_spell-1_$9_spellrange}}} {{target=@{selected|repeating_spell-1_$9_spelltarget}}} @{selected|repeating_spell-1_$9_spellritual} @{selected|repeating_spell-1_$9_spellconcentration} @{selected|repeating_spell-1_$9_spellcomp_v} @{selected|repeating_spell-1_$9_spellcomp_s} {@{selected|repeating_spell-1_$9_spellcomp_m}} {{material=@{selected|repeating_spell-1_$9_spellcomp_materials}}} {{duration=@{selected|repeating_spell-1_$9_spellduration}}} {{description=@{selected|repeating_spell-1_$9_spelldescription} 
[Spell List](~selected|Spells)}} {{athigherlevels=@{selected|repeating_spell-1_$9_spellathigherlevels}}} {{charname=charname}}

```

