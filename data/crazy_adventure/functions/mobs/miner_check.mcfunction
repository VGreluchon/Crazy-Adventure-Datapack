scoreboard players set #success crazy_adventure.data 0
execute store success score #success crazy_adventure.data run locate biome dripstone_caves
execute if score #success crazy_adventure.data matches 1 store result score #distance crazy_adventure.data run locate biome dripstone_caves
execute if score #success crazy_adventure.data matches 1 if score #distance crazy_adventure.data matches ..10 run function crazy_adventure:mobs/miner
execute if score #success crazy_adventure.data matches 1 if score #distance crazy_adventure.data matches ..10 run tp 0 -10000 0
execute if score #success crazy_adventure.data matches 1 if score #distance crazy_adventure.data matches ..10 run kill @s
tag @s add crazy_adventure.miner_check