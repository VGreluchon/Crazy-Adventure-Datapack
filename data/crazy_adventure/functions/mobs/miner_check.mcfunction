execute store result score #distance crazy_adventure.data run locatebiome dripstone_caves
execute if score #distance crazy_adventure.data matches ..10 run function crazy_adventure:mobs/miner
execute if score #distance crazy_adventure.data matches ..10 run tp 0 -10000 0
execute if score #distance crazy_adventure.data matches ..10 run kill @s
tag @s add crazy_adventure.miner_check
