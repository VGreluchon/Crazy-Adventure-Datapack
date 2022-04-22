
##Called by function tag #simplenergy:furnace_recipes
##Supporting more than 1 count for the output (Count:3b, Count:17b, ...)

#Template Ore
	execute if score #found simplenergy.data matches 0 store result score #found simplenergy.data if data storage simplenergy:main furnace.input_ctc{id:"template_ore"} run loot replace block ~ ~ ~ container.3 loot energy_datapack_template:i/template_ingot

#Raw Template
	execute if score #found simplenergy.data matches 0 store result score #found simplenergy.data if data storage simplenergy:main furnace.input_ctc{id:"raw_template"} run loot replace block ~ ~ ~ container.3 loot energy_datapack_template:i/template_ingot
