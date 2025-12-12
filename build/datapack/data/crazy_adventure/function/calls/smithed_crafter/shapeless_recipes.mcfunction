
#> crazy_adventure:calls/smithed_crafter/shapeless_recipes
#
# @within	#smithed.crafter:event/shapeless_recipes
#

execute if score @s smithed.data matches 0 store result score @s smithed.data if score count smithed.data matches 1 if data storage smithed.crafter:input {"recipe": [{"count": 1, "components": {"minecraft:custom_data": {"crazy_adventure": {"uranium_block": true}}}}]} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/uranium_ingot_x9
execute if score @s smithed.data matches 0 store result score @s smithed.data if score count smithed.data matches 1 if data storage smithed.crafter:input {"recipe": [{"count": 1, "components": {"minecraft:custom_data": {"crazy_adventure": {"uranium_ingot": true}}}}]} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/uranium_nugget_x9
execute if score @s smithed.data matches 0 store result score @s smithed.data if score count smithed.data matches 1 if data storage smithed.crafter:input {"recipe": [{"count": 1, "components": {"minecraft:custom_data": {"crazy_adventure": {"californium_block": true}}}}]} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/californium_ingot_x9
execute if score @s smithed.data matches 0 store result score @s smithed.data if score count smithed.data matches 1 if data storage smithed.crafter:input {"recipe": [{"count": 1, "components": {"minecraft:custom_data": {"crazy_adventure": {"californium_ingot": true}}}}]} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/californium_nugget_x9
execute if score @s smithed.data matches 0 store result score @s smithed.data if score count smithed.data matches 1 if data storage smithed.crafter:input {"recipe": [{"count": 1, "components": {"minecraft:custom_data": {"crazy_adventure": {"manual": true}}}}]} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/manual
execute if score @s smithed.data matches 0 store result score @s smithed.data if score count smithed.data matches 2 if data storage smithed.crafter:input {"recipe": [{"id": "minecraft:book", "count": 1}, {"id": "minecraft:tnt", "count": 1}]} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/manual
execute if score @s smithed.data matches 0 store result score @s smithed.data if score count smithed.data matches 2 if data storage smithed.crafter:input {"recipe": [{"count": 1, "components": {"minecraft:custom_data": {"crazy_adventure": {"uranium_shard": true}}}}, {"count": 1, "components": {"minecraft:custom_data": {"crazy_adventure": {"uranium_book": true}}}}]} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/uranium_book

