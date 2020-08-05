# Character Traits Ability
Print an interactive list of the selected characters traits and features in the chat.

## How it works
...some blurb here to explain things

## "Traits" Ability on playable Character sheet

### Adjustments
You want to manually remove lines of traits to reflect the number of traits your character knows. Say your character has 6 traits and features, remove 4 trait lines starting from the bottom up - from the line ending on `(~charactercard0|trait9)` to and including the line ending on `(~charactercard0|trait5)`.

### Macro
Add following ability to any playable Character to display their traits list.



```
/w "@{selected|character_name}" &{template:atk} {{desc=***@{selected|character_name} Traits and Features***
___________________________

[@{Selected|repeating_traits_$0_name}](~charactercard0|trait0)
[@{Selected|repeating_traits_$1_name}](~charactercard0|trait1)
[@{Selected|repeating_traits_$2_name}](~charactercard0|trait2)
[@{Selected|repeating_traits_$3_name}](~charactercard0|trait3)
[@{Selected|repeating_traits_$4_name}](~charactercard0|trait4)
[@{Selected|repeating_traits_$5_name}](~charactercard0|trait5)
[@{Selected|repeating_traits_$6_name}](~charactercard0|trait6)
[@{Selected|repeating_traits_$7_name}](~charactercard0|trait7)
}}

```

## "spellcard" Abilities on generic Character sheet
add abilitites to the spellcard character



```
/w "@{selected|character_name}" &{template:npcaction} {{name=@{selected|character_name}}} {{rname=@{selected|repeating_traits_$1_name}}} {{description=@{selected|repeating_traits_$1_description}
[Traits List](~selected|Traits)
}}

```

