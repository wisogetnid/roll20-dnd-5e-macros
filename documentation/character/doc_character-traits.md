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

## "trait" Abilities on generic Character sheet
add abilitites to the trait character

**trait0**

```
/w "@{selected|character_name}" &{template:npcaction} {{name=@{selected|character_name}}} {{rname=@{selected|repeating_traits_$0_name}}} {{description=@{selected|repeating_traits_$0_description}
[Traits List](~selected|Traits)
}}

```

**trait1**

```
/w "@{selected|character_name}" &{template:npcaction} {{name=@{selected|character_name}}} {{rname=@{selected|repeating_traits_$1_name}}} {{description=@{selected|repeating_traits_$1_description}
[Traits List](~selected|Traits)
}}

```

**trait2**

```
/w "@{selected|character_name}" &{template:npcaction} {{name=@{selected|character_name}}} {{rname=@{selected|repeating_traits_$2_name}}} {{description=@{selected|repeating_traits_$2_description}
[Traits List](~selected|Traits)
}}

```

**trait3**

```
/w "@{selected|character_name}" &{template:npcaction} {{name=@{selected|character_name}}} {{rname=@{selected|repeating_traits_$3_name}}} {{description=@{selected|repeating_traits_$3_description}
[Traits List](~selected|Traits)
}}

```

**trait4**

```
/w "@{selected|character_name}" &{template:npcaction} {{name=@{selected|character_name}}} {{rname=@{selected|repeating_traits_$4_name}}} {{description=@{selected|repeating_traits_$4_description}
[Traits List](~selected|Traits)
}}

```

**trait5**

```
/w "@{selected|character_name}" &{template:npcaction} {{name=@{selected|character_name}}} {{rname=@{selected|repeating_traits_$5_name}}} {{description=@{selected|repeating_traits_$5_description}
[Traits List](~selected|Traits)
}}

```

**trait6**

```
/w "@{selected|character_name}" &{template:npcaction} {{name=@{selected|character_name}}} {{rname=@{selected|repeating_traits_$6_name}}} {{description=@{selected|repeating_traits_$6_description}
[Traits List](~selected|Traits)
}}

```

**trait7**

```
/w "@{selected|character_name}" &{template:npcaction} {{name=@{selected|character_name}}} {{rname=@{selected|repeating_traits_$7_name}}} {{description=@{selected|repeating_traits_$7_description}
[Traits List](~selected|Traits)
}}

```

**trait8**

```
/w "@{selected|character_name}" &{template:npcaction} {{name=@{selected|character_name}}} {{rname=@{selected|repeating_traits_$8_name}}} {{description=@{selected|repeating_traits_$8_description}
[Traits List](~selected|Traits)
}}

```

**trait9**

```
/w "@{selected|character_name}" &{template:npcaction} {{name=@{selected|character_name}}} {{rname=@{selected|repeating_traits_$9_name}}} {{description=@{selected|repeating_traits_$9_description}
[Traits List](~selected|Traits)
}}

```

