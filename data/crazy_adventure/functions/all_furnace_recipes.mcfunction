
##Called by function tag #simplenergy:furnace_recipes
##Supporting more than 1 count for the output (Count:3b, Count:17b, ...)

#Uranium Ore
	execute if score #found simplenergy.data matches 0 store result score #found simplenergy.data if data storage simplenergy:main furnace.input_ctc{id:"uranium_ore"} run loot replace block ~ ~ ~ container.3 loot crazy_adventure:i/uranium_ingot
#Raw Uranium
	execute if score #found simplenergy.data matches 0 store result score #found simplenergy.data if data storage simplenergy:main furnace.input_ctc{id:"raw_uranium"} run loot replace block ~ ~ ~ container.3 loot crazy_adventure:i/uranium_ingot

#Californium Ore
	execute if score #found simplenergy.data matches 0 store result score #found simplenergy.data if data storage simplenergy:main furnace.input_ctc{id:"californium_ore"} run loot replace block ~ ~ ~ container.3 loot crazy_adventure:i/californium_ingot
#Raw Californium
	execute if score #found simplenergy.data matches 0 store result score #found simplenergy.data if data storage simplenergy:main furnace.input_ctc{id:"raw_californium"} run loot replace block ~ ~ ~ container.3 loot crazy_adventure:i/californium_ingot
