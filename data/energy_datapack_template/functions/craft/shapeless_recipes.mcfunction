
##Called by function tag #smithed.crafter:event/shapeless_recipes

#Template Block
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 1 if data storage smithed.crafter:main root.temp{shapeless_crafting_input:[{Count:9b,id:"minecraft:command_block",tag:{energy_datapack_template:{template_ingot:1b}}}]} run loot replace block ~ ~ ~ container.16 loot energy_datapack_template:i/template_block

#Template Ingot
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 1 if data storage smithed.crafter:main root.temp{shapeless_crafting_input:[{Count:1b,id:"minecraft:barrel",tag:{energy_datapack_template:{template_block:1b}}}]} run loot replace block ~ ~ ~ container.16 loot energy_datapack_template:i/template_ingot_x9

