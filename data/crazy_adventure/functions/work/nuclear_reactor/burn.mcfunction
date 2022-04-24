scoreboard players set @s crazy_adventure.working 60
execute store result score #count crazy_adventure.data run data get block ~ ~ ~ Items[{Slot:13b}].Count
scoreboard players remove #count crazy_adventure.data 1
execute store result block ~ ~ ~ Items[{Slot:13b}].Count byte 1 run scoreboard players get #count crazy_adventure.data
loot insert ~ ~ ~ loot crazy_adventure:i/radioactive_waste