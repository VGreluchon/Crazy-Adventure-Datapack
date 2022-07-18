scoreboard players set #success crazy_adventure.data 0
execute store success score #success crazy_adventure.data if predicate crazy_adventure:miner_check
execute if score #success crazy_adventure.data matches 1 run function crazy_adventure:mobs/miner
execute if score #success crazy_adventure.data matches 1 run tp 0 -10000 0
execute if score #success crazy_adventure.data matches 1 run kill @s
tag @s add crazy_adventure.miner_check