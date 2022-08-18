#place copper block in middle
scoreboard players add @s crazy_adventure.working 1
execute store result block ~ ~ ~ Items[{Slot:11b}].Count byte -0.999 run data get storage crazy_adventure:main Items[{Slot:11b}].Count -1
loot replace block ~ ~ ~ container.13 loot minecraft:blocks/copper_block


