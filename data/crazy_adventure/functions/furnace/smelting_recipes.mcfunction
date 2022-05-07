
##Called by function tag #furnace_nbt_recipes:v1.0/smelting_recipes
##You are allowed to call a loot table with more than 1 output count.
##(x1 cobblestone -> x2 stone for instance)


#Uranium Ore
	execute if score #found furnace_nbt_recipes.data matches 0 store result score #found furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input.tag.ctc{id:"uranium_ore"} run loot replace block ~ ~ ~ container.3 loot crazy_adventure:i/uranium_ingot
#Raw Uranium
	execute if score #found furnace_nbt_recipes.data matches 0 store result score #found furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input.tag.ctc{id:"raw_uranium"} run loot replace block ~ ~ ~ container.3 loot crazy_adventure:i/uranium_ingot

#Californium Ore
	execute if score #found furnace_nbt_recipes.data matches 0 store result score #found furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input.tag.ctc{id:"californium_ore"} run loot replace block ~ ~ ~ container.3 loot crazy_adventure:i/californium_ingot
#Raw Californium
	execute if score #found furnace_nbt_recipes.data matches 0 store result score #found furnace_nbt_recipes.data if data storage furnace_nbt_recipes:main input.tag.ctc{id:"raw_californium"} run loot replace block ~ ~ ~ container.3 loot crazy_adventure:i/californium_ingot
