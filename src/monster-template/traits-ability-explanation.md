# Monster template
Use as generic template for Monsters to have predefined Abilities for quick and easy adaption.
To create a new monster
1. __Duplicate__ the template character sheet in your Journal
1. __Rename__ the newly created sheet. __Attention__, the template will stay open while the new character sheet appears at the root of your Journal
1. __Change the predefined Abilities__ according to the new monster's abilities
1. __Update token and avatar images__ to get the visuals right
1. Make sure to __save your changes__

## Abilities for Monster template
Add following Abilities to a new Character sheet - best named Monster template

### Action:Multi
```
%{selected|repeating_npcaction_$0_npc_action}
%{selected|repeating_npcaction_$1_npc_action}
%{selected|repeating_npcaction_$2_npc_action}
```
When on a concrete monster, add, remove or change the attacks this monster would execute as its Multiattack

### Action:1
```
%{selected|repeating_npcaction_$0_npc_action}
```

### Action:2
```
%{selected|repeating_npcaction_$1_npc_action}
```
When on a concrete monster, add or remove attacks according to the monster's attack abilities

### Trait:1
```
/w gm &{template:npcaction} {{name=@{selected|npc_name}}} {{rname=@{selected|repeating_npctrait_$0_name}}} {{description=@{selected|repeating_npctrait_$0_description}}}
```

### Trait:2
```
/w gm &{template:npcaction} {{name=@{selected|npc_name}}} {{rname=@{selected|repeating_npctrait_$1_name}}} {{description=@{selected|repeating_npctrait_$1_description}}}
```
When on a concrete monster, add or remove traits according to the monster's trait abilities

### Reaction
```
/w gm &{template:npcaction} {{name=@{selected|npc_name}}} {{rname=@{selected|repeating_npcreaction_$0_name}}} {{description=@{selected|repeating_npcreaction_$0_desc} }}
```

### Initiative
```
%{selected|npc_init}
```

### Saves
```
/w gm &{template:default} {{name=Saving Throws}} {{Str Save= [[1d20+@{strength_mod}]] | [[1d20+@{strength_mod}]]}} {{Dex Save= [[1d20+@{dexterity_mod}]] | [[1d20+@{dexterity_mod}]]}} {{Con Save= [[1d20+@{constitution_mod}]] | [[1d20+@{constitution_mod}]]}} {{Int Save= [[1d20+@{intelligence_mod}]] | [[1d20+@{intelligence_mod}]]}} {{Wis Save= [[1d20+@{wisdom_mod}]] | [[1d20+@{wisdom_mod}]]}} {{Cha Save= [[1d20+@{charisma_mod}]] | [[1d20+@{charisma_mod}]]}}
```

### Resistances
```
/w gm &{template:default} {{name=DR/Immunities}} {{Damage Resistance= @{selected|npc_resistances}}} {{Damage Vulnerability= @{selected|npc_vulnerabilities}}} {{Damage Immunity= @{selected|npc_immunities}}} {{Condition Immunity= @{selected|npc_condition_immunities}}}
```

### Perception
```
%{Selected|npc_perception}
```

### Stats
```
/w gm &{template:default} {{name=Stats}} {{Armor Class= @{selected|npc_AC} @{selected|npc_actype}}} {{Hit Dice= @{selected|npc_hpformula} | @{selected|hp|max} | [[@{selected|npc_hpformula}]]}} {{Speed= @{selected|npc_speed}}} {{Senses=@{selected|npc_senses}}}
```

### Skill Checks
```
/w @{selected|character_name} &{template:npcaction} {{rname=Skill Checks}} {{description=Select Skill Check [Acrobatics](~selected|npc_acrobatics) [Animal Handling](~selected|npc_animal_handling) [Arcana](~selected|npc_arcana) [Athletics](~selected|npc_athletics) [Deception](~selected|npc_deception) [History](~selected|npc_history) [Insight](~selected|npc_insight) [Intimidation](~selected|npc_intimidation) [Investigation](~selected|npc_investigation) [Medicine](~selected|npc_medicine) [Nature](~selected|npc_nature) [Perception](~selected|npc_perception) [Performance](~selected|npc_performance) [Persuasion](~selected|npc_persuasion) [Religion](~selected|npc_religion) [Sleight of Hand](~selected|npc_sleight_of_hand) [Survival](~selected|npc_survival) [Stealth](~selected|npc_stealth) }}
```
