
scoreboard players remove #count_z crazy_adventure.data 1
scoreboard players set #block crazy_adventure.data 0
execute if score #block crazy_adventure.data matches 0 store success score #block crazy_adventure.data if block ~ ~ ~ wheat run function crazy_adventure:work/sticks/fertilizer_stick/blocks/wheat
execute if score #block crazy_adventure.data matches 0 store success score #block crazy_adventure.data if block ~ ~ ~ carrots run function crazy_adventure:work/sticks/fertilizer_stick/blocks/carrots
execute if score #block crazy_adventure.data matches 0 store success score #block crazy_adventure.data if block ~ ~ ~ potatoes run function crazy_adventure:work/sticks/fertilizer_stick/blocks/potatoes
execute if score #block crazy_adventure.data matches 0 store success score #block crazy_adventure.data if block ~ ~ ~ beetroots run function crazy_adventure:work/sticks/fertilizer_stick/blocks/beetroots
execute if score #block crazy_adventure.data matches 0 store success score #block crazy_adventure.data if block ~ ~ ~ melon_stem run function crazy_adventure:work/sticks/fertilizer_stick/blocks/melon_stem
execute if score #block crazy_adventure.data matches 0 store success score #block crazy_adventure.data if block ~ ~ ~ pumpkin_stem run function crazy_adventure:work/sticks/fertilizer_stick/blocks/pumpkin_stem

execute if score #count_z crazy_adventure.data matches 1.. positioned ~ ~ ~-1 run function crazy_adventure:work/sticks/fertilizer_stick/layer_z