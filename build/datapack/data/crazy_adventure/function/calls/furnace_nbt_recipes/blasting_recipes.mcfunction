
#> crazy_adventure:calls/furnace_nbt_recipes/blasting_recipes
#
# @within	#furnace_nbt_recipes:v1/blasting_recipes
#

execute if score #found furnace_nbt_recipes.data matches 0 store result score #found furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input{"components": {"minecraft:custom_data": {"crazy_adventure": {"raw_uranium": true}}}} run loot replace block ~ ~ ~ container.3 loot crazy_adventure:i/uranium_ingot
execute if score #found furnace_nbt_recipes.data matches 0 store result score #found furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input{"components": {"minecraft:custom_data": {"crazy_adventure": {"uranium_ore": true}}}} run loot replace block ~ ~ ~ container.3 loot crazy_adventure:i/uranium_ingot
execute if score #found furnace_nbt_recipes.data matches 0 store result score #found furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input{"components": {"minecraft:custom_data": {"crazy_adventure": {"raw_californium": true}}}} run loot replace block ~ ~ ~ container.3 loot crazy_adventure:i/californium_ingot
execute if score #found furnace_nbt_recipes.data matches 0 store result score #found furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input{"components": {"minecraft:custom_data": {"crazy_adventure": {"californium_ore": true}}}} run loot replace block ~ ~ ~ container.3 loot crazy_adventure:i/californium_ingot

