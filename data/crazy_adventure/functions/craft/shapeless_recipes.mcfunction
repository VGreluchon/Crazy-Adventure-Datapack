
##Called by function tag #smithed.crafter:event/shapeless_recipes

#Banana sapling
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 1 if data storage smithed.crafter:main root.temp{shapeless_crafting_input:[{Count:1b,tag:{ctc:{id:"banana"}}}]} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/banana_sapling

#Template Ingot
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 1 if data storage smithed.crafter:main root.temp{shapeless_crafting_input:[{Count:1b,id:"minecraft:barrel",tag:{crazy_adventure:{template_block:1b}}}]} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/template_ingot_x9

#Uranium Block
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 1 if data storage smithed.crafter:main root.temp{shapeless_crafting_input:[{Count:9b,id:"minecraft:command_block",tag:{crazy_adventure:{uranium_ingot:1b}}}]} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/uranium_block

#Uranium Ingot
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 1 if data storage smithed.crafter:main root.temp{shapeless_crafting_input:[{Count:1b,id:"minecraft:barrel",tag:{crazy_adventure:{uranium_block:1b}}}]} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/uranium_ingot_x9
