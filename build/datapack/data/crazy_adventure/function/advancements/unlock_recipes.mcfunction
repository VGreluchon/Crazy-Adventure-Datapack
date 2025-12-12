
#> crazy_adventure:advancements/unlock_recipes
#
# @executed	as the player & at current position
#
# @within	advancement crazy_adventure:unlock_recipes
#

# Revoke advancement
advancement revoke @s only crazy_adventure:unlock_recipes

## For each ingredient in inventory, unlock the recipes
# minecraft:iron_block
scoreboard players set #success crazy_adventure.data 0
execute store success score #success crazy_adventure.data if items entity @s container.* minecraft:iron_block
execute if score #success crazy_adventure.data matches 1 run recipe give @s crazy_adventure:ore_extractor_1

# minecraft:gold_block
scoreboard players set #success crazy_adventure.data 0
execute store success score #success crazy_adventure.data if items entity @s container.* minecraft:gold_block
execute if score #success crazy_adventure.data matches 1 run recipe give @s crazy_adventure:ore_extractor_1

# minecraft:coal_block
scoreboard players set #success crazy_adventure.data 0
execute store success score #success crazy_adventure.data if items entity @s container.* minecraft:coal_block
execute if score #success crazy_adventure.data matches 1 run recipe give @s crazy_adventure:ore_extractor_1

# minecraft:wooden_pickaxe
scoreboard players set #success crazy_adventure.data 0
execute store success score #success crazy_adventure.data if items entity @s container.* minecraft:wooden_pickaxe
execute if score #success crazy_adventure.data matches 1 run recipe give @s crazy_adventure:ore_extractor_1

# minecraft:copper_block
scoreboard players set #success crazy_adventure.data 0
execute store success score #success crazy_adventure.data if items entity @s container.* minecraft:copper_block
execute if score #success crazy_adventure.data matches 1 run recipe give @s crazy_adventure:ore_extractor_1

## Add result items
execute if items entity @s container.* *[custom_data~{"crazy_adventure": {"ore_extractor_1":true} }] run recipe give @s crazy_adventure:ore_extractor_1

