
##Called by function tag #smithed.crafter:event/recipes
data modify storage smithed.crafter:main flags append value "consume_tools"

 
#Nuclear Reactor
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,id:"minecraft:copper_block"},{Slot:1b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:2b,id:"minecraft:copper_block"}],1:[{Slot:0b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:1b,tag:{ctc:{id:"furnace_generator"}}},{Slot:2b,tag:{ctc:{id:"uranium_ingot"}}}],2:[{Slot:0b,id:"minecraft:copper_block"},{Slot:1b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:2b,id:"minecraft:copper_block"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/nuclear_reactor
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,id:"minecraft:exposed_copper"},{Slot:1b,tag:{crazy_adventure:{uranium_core:1b}}},{Slot:2b,id:"minecraft:exposed_copper"}],1:[{Slot:0b,tag:{crazy_adventure:{uranium_core:1b}}},{Slot:1b,tag:{crazy_adventure:{nuclear_reactor:1b}}},{Slot:2b,tag:{crazy_adventure:{uranium_core:1b}}}],2:[{Slot:0b,id:"minecraft:exposed_copper"},{Slot:1b,tag:{crazy_adventure:{uranium_core:1b}}},{Slot:2b,id:"minecraft:exposed_copper"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/better_nuclear_reactor
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,id:"minecraft:weathered_copper"},{Slot:1b,tag:{crazy_adventure:{californium_ingot:1b}}},{Slot:2b,id:"minecraft:weathered_copper"}],1:[{Slot:0b,tag:{crazy_adventure:{californium_ingot:1b}}},{Slot:1b,tag:{crazy_adventure:{better_nuclear_reactor:1b}}},{Slot:2b,tag:{crazy_adventure:{californium_ingot:1b}}}],2:[{Slot:0b,id:"minecraft:weathered_copper"},{Slot:1b,tag:{crazy_adventure:{californium_ingot:1b}}},{Slot:2b,id:"minecraft:weathered_copper"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/amazing_nuclear_reactor
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,id:"minecraft:oxidized_copper"},{Slot:1b,tag:{crazy_adventure:{californium_core:1b}}},{Slot:2b,id:"minecraft:oxidized_copper"}],1:[{Slot:0b,tag:{crazy_adventure:{californium_core:1b}}},{Slot:1b,tag:{crazy_adventure:{amazing_nuclear_reactor:1b}}},{Slot:2b,tag:{crazy_adventure:{californium_core:1b}}}],2:[{Slot:0b,id:"minecraft:oxidized_copper"},{Slot:1b,tag:{crazy_adventure:{californium_core:1b}}},{Slot:2b,id:"minecraft:oxidized_copper"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/incredible_nuclear_reactor

#Radioactive Waste Barrel
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,tag:{crazy_adventure:{radioactive_waste:1b}}},{Slot:1b,tag:{crazy_adventure:{radioactive_waste:1b}}},{Slot:2b,tag:{crazy_adventure:{radioactive_waste:1b}}}],1:[{Slot:0b,tag:{crazy_adventure:{radioactive_waste:1b}}},{Slot:1b,id:"minecraft:barrel"},{Slot:2b,tag:{crazy_adventure:{radioactive_waste:1b}}}],2:[{Slot:0b,tag:{crazy_adventure:{radioactive_waste:1b}}},{Slot:1b,tag:{crazy_adventure:{radioactive_waste:1b}}},{Slot:2b,tag:{crazy_adventure:{radioactive_waste:1b}}}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/radioactive_waste_barrel
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,tag:{crazy_adventure:{californium_waste:1b}}},{Slot:1b,tag:{crazy_adventure:{californium_waste:1b}}},{Slot:2b,tag:{crazy_adventure:{californium_waste:1b}}}],1:[{Slot:0b,tag:{crazy_adventure:{californium_waste:1b}}},{Slot:1b,id:"minecraft:barrel"},{Slot:2b,tag:{crazy_adventure:{californium_waste:1b}}}],2:[{Slot:0b,tag:{crazy_adventure:{californium_waste:1b}}},{Slot:1b,tag:{crazy_adventure:{californium_waste:1b}}},{Slot:2b,tag:{crazy_adventure:{californium_waste:1b}}}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/californium_waste_barrel

#Uranium Battery
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,tag:{crazy_adventure:{radioactive_waste_barrel:1b}}},{Slot:1b,tag:{crazy_adventure:{radioactive_waste_barrel:1b}}},{Slot:2b,tag:{crazy_adventure:{radioactive_waste_barrel:1b}}}],1:[{Slot:0b,tag:{crazy_adventure:{radioactive_waste_barrel:1b}}},{Slot:1b,tag:{ctc:{id:"elite_battery"}}},{Slot:2b,tag:{crazy_adventure:{radioactive_waste_barrel:1b}}}],2:[{Slot:0b,tag:{ctc:{id:"simplunium_block"}}},{Slot:1b,tag:{ctc:{id:"simplunium_block"}}},{Slot:2b,tag:{ctc:{id:"simplunium_block"}}}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/uranium_battery

#Ore extractor 1
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,id:"minecraft:iron_block"},{Slot:1b,id:"minecraft:gold_block"},{Slot:2b,id:"minecraft:iron_block"}],1:[{Slot:0b,id:"minecraft:coal_block"},{Slot:1b,id:"minecraft:wooden_pickaxe"},{Slot:2b,id:"minecraft:coal_block"}],2:[{Slot:0b,id:"minecraft:copper_block"},{Slot:1b,id:"minecraft:copper_block"},{Slot:2b,id:"minecraft:copper_block"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/ore_extractor_lvl_1
#Ore extractor 2
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:1b,id:"minecraft:stone_pickaxe"},{Slot:2b,tag:{ctc:{id:"uranium_ingot"}}}],1:[{Slot:0b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:1b,tag:{crazy_adventure:{ore_extractor_lvl_1:1b}}},{Slot:2b,tag:{ctc:{id:"uranium_ingot"}}}],2:[{Slot:0b,id:"minecraft:exposed_copper"},{Slot:1b,id:"minecraft:exposed_copper"},{Slot:2b,id:"minecraft:exposed_copper"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/ore_extractor_lvl_2
#Ore extractor 3
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,tag:{crazy_adventure:{uranium_core:1b}}},{Slot:1b,id:"minecraft:iron_pickaxe"},{Slot:2b,tag:{crazy_adventure:{uranium_core:1b}}}],1:[{Slot:0b,tag:{crazy_adventure:{uranium_core:1b}}},{Slot:1b,tag:{crazy_adventure:{ore_extractor_lvl_2:1b}}},{Slot:2b,tag:{crazy_adventure:{uranium_core:1b}}}],2:[{Slot:0b,id:"minecraft:weathered_copper"},{Slot:1b,id:"minecraft:weathered_copper"},{Slot:2b,id:"minecraft:weathered_copper"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/ore_extractor_lvl_3
#Ore extractor 4
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,tag:{ctc:{id:"uranium_block"}}},{Slot:1b,tag:{crazy_adventure:{californium_pickaxe:1b}}},{Slot:2b,tag:{ctc:{id:"uranium_block"}}}],1:[{Slot:0b,tag:{ctc:{id:"uranium_block"}}},{Slot:1b,tag:{crazy_adventure:{ore_extractor_lvl_3:1b}}},{Slot:2b,tag:{ctc:{id:"uranium_block"}}}],2:[{Slot:0b,id:"minecraft:oxidized_copper"},{Slot:1b,id:"minecraft:oxidized_copper"},{Slot:2b,id:"minecraft:oxidized_copper"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/ore_extractor_lvl_4

#Uranium Food
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:1b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:2b,tag:{ctc:{id:"uranium_ingot"}}}],1:[{Slot:0b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:1b,tag:{ctc:{id:"banana"}}},{Slot:2b,tag:{ctc:{id:"uranium_ingot"}}}],2:[{Slot:0b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:1b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:2b,tag:{ctc:{id:"uranium_ingot"}}}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/uranium_banana
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:1b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:2b,tag:{ctc:{id:"uranium_ingot"}}}],1:[{Slot:0b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:1b,id:"minecraft:apple"},{Slot:2b,tag:{ctc:{id:"uranium_ingot"}}}],2:[{Slot:0b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:1b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:2b,tag:{ctc:{id:"uranium_ingot"}}}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/uranium_apple


#Anti Radiation Helmet
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,id:"minecraft:yellow_wool"},{Slot:1b,id:"minecraft:yellow_wool"},{Slot:2b,id:"minecraft:yellow_wool"}],1:[{Slot:0b,id:"minecraft:yellow_wool"},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:yellow_wool"}]}} if data storage smithed.crafter:main root.temp{crafting_input:{2:[]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/anti_radiation_helmet
#Anti Radiation Chestplate
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,id:"minecraft:yellow_wool"},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:yellow_wool"}],1:[{Slot:0b,id:"minecraft:yellow_wool"},{Slot:1b,id:"minecraft:yellow_wool"},{Slot:2b,id:"minecraft:yellow_wool"}],2:[{Slot:0b,id:"minecraft:yellow_wool"},{Slot:1b,id:"minecraft:yellow_wool"},{Slot:2b,id:"minecraft:yellow_wool"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/anti_radiation_chestplate
#Anti Radiation Leggings
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,id:"minecraft:yellow_wool"},{Slot:1b,id:"minecraft:yellow_wool"},{Slot:2b,id:"minecraft:yellow_wool"}],1:[{Slot:0b,id:"minecraft:yellow_wool"},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:yellow_wool"}],2:[{Slot:0b,id:"minecraft:yellow_wool"},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:yellow_wool"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/anti_radiation_leggings
#Anti Radiation Boots
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,id:"minecraft:yellow_wool"},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:yellow_wool"}],1:[{Slot:0b,id:"minecraft:yellow_wool"},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:yellow_wool"}]}} if data storage smithed.crafter:main root.temp{crafting_input:{2:[]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/anti_radiation_boots
#Anti Radiation Glove 
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,id:"minecraft:light_blue_wool"},{Slot:1b,tag:{crazy_adventure:{uranium_core:1b}}},{Slot:2b,id:"minecraft:light_blue_wool"}],1:[{Slot:0b,id:"minecraft:light_blue_wool"},{Slot:1b,id:"minecraft:light_blue_wool"},{Slot:2b,id:"minecraft:light_blue_wool"}],2:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:light_blue_wool"},{Slot:2b,id:"minecraft:air"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/anti_radiation_glove


#URANIUM STUFF
#Uranium Helmet
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:1b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:2b,tag:{ctc:{id:"uranium_ingot"}}}],1:[{Slot:0b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:1b,id:"minecraft:air"},{Slot:2b,tag:{ctc:{id:"uranium_ingot"}}}]}} if data storage smithed.crafter:main root.temp{crafting_input:{2:[]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/uranium_helmet
#Uranium Chestplate
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:1b,id:"minecraft:air"},{Slot:2b,tag:{ctc:{id:"uranium_ingot"}}}],1:[{Slot:0b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:1b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:2b,tag:{ctc:{id:"uranium_ingot"}}}],2:[{Slot:0b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:1b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:2b,tag:{ctc:{id:"uranium_ingot"}}}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/uranium_chestplate
#Uranium Leggings
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:1b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:2b,tag:{ctc:{id:"uranium_ingot"}}}],1:[{Slot:0b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:1b,id:"minecraft:air"},{Slot:2b,tag:{ctc:{id:"uranium_ingot"}}}],2:[{Slot:0b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:1b,id:"minecraft:air"},{Slot:2b,tag:{ctc:{id:"uranium_ingot"}}}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/uranium_leggings
#Uranium Boots
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:1b,id:"minecraft:air"},{Slot:2b,tag:{ctc:{id:"uranium_ingot"}}}],1:[{Slot:0b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:1b,id:"minecraft:air"},{Slot:2b,tag:{ctc:{id:"uranium_ingot"}}}]}} if data storage smithed.crafter:main root.temp{crafting_input:{2:[]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/uranium_boots
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{1:[{Slot:0b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:1b,id:"minecraft:air"},{Slot:2b,tag:{ctc:{id:"uranium_ingot"}}}],2:[{Slot:0b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:1b,id:"minecraft:air"},{Slot:2b,tag:{ctc:{id:"uranium_ingot"}}}]}} if data storage smithed.crafter:main root.temp{crafting_input:{0:[]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/uranium_boots
#Uranium Sword
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:air"}],1:[{Slot:0b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:air"}],2:[{Slot:0b,id:"minecraft:stick"},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:air"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/uranium_sword
#Uranium Pickaxe
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:1b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:2b,tag:{ctc:{id:"uranium_ingot"}}}],1:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:stick"},{Slot:2b,id:"minecraft:air"}],2:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:stick"},{Slot:2b,id:"minecraft:air"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/uranium_pickaxe
#Uranium Axe
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,id:"minecraft:air"},{Slot:1b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:2b,tag:{ctc:{id:"uranium_ingot"}}}],1:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:stick"},{Slot:2b,tag:{ctc:{id:"uranium_ingot"}}}],2:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:stick"},{Slot:2b,id:"minecraft:air"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/uranium_axe
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,id:"minecraft:air"},{Slot:1b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:2b,tag:{ctc:{id:"uranium_ingot"}}}],1:[{Slot:0b,id:"minecraft:air"},{Slot:1b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:2b,id:"minecraft:stick"}],2:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:stick"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/uranium_axe
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:1b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:2b,id:"minecraft:air"}],1:[{Slot:0b,id:"minecraft:stick"},{Slot:1b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:2b,id:"minecraft:air"}],2:[{Slot:0b,id:"minecraft:stick"},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:air"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/uranium_axe
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:1b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:2b,id:"minecraft:air"}],1:[{Slot:0b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:1b,id:"minecraft:stick"},{Slot:2b,id:"minecraft:air"}],2:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:stick"},{Slot:2b,id:"minecraft:air"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/uranium_axe
#Uranium Hoe
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:1b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:2b,id:"minecraft:air"}],1:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:stick"},{Slot:2b,id:"minecraft:air"}],2:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:stick"},{Slot:2b,id:"minecraft:air"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/uranium_hoe
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,id:"minecraft:air"},{Slot:1b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:2b,tag:{ctc:{id:"uranium_ingot"}}}],1:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:stick"},{Slot:2b,id:"minecraft:air"}],2:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:stick"},{Slot:2b,id:"minecraft:air"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/uranium_hoe
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,id:"minecraft:air"},{Slot:1b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:2b,tag:{ctc:{id:"uranium_ingot"}}}],1:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:stick"}],2:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:stick"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/uranium_hoe
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:1b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:2b,id:"minecraft:air"}],1:[{Slot:0b,id:"minecraft:stick"},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:air"}],2:[{Slot:0b,id:"minecraft:stick"},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:air"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/uranium_hoe
#Uranium Shovel
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:air"}],1:[{Slot:0b,id:"minecraft:stick"},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:air"}],2:[{Slot:0b,id:"minecraft:stick"},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:air"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/uranium_shovel


#Uranium Core
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:command_block",tag:{crazy_adventure:{uranium_ingot:1b}}},{Slot:2b,id:"minecraft:air"}],1:[{Slot:0b,id:"minecraft:command_block",tag:{crazy_adventure:{uranium_ingot:1b}}},{Slot:1b,id:"minecraft:iron_block"},{Slot:2b,id:"minecraft:command_block",tag:{crazy_adventure:{uranium_ingot:1b}}}],2:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:command_block",tag:{crazy_adventure:{uranium_ingot:1b}}},{Slot:2b,id:"minecraft:air"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/uranium_core

#Stick Charger/ Chargeless Stick
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,id:"minecraft:air"},{Slot:1b,tag:{crazy_adventure:{radioactive_waste:1b}}},{Slot:2b,tag:{crazy_adventure:{uranium_core:1b}}}],1:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:blaze_rod"},{Slot:2b,tag:{crazy_adventure:{radioactive_waste:1b}}}],2:[{Slot:0b,id:"minecraft:blaze_rod"},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:air"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/chargeless_stick
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:lightning_rod"},{Slot:2b,id:"minecraft:air"}],1:[{Slot:0b,tag:{crazy_adventure:{radioactive_waste_barrel:1b}}},{Slot:1b,tag:{crazy_adventure:{uranium_core:1b}}},{Slot:2b,tag:{crazy_adventure:{radioactive_waste_barrel:1b}}}],2:[{Slot:0b,id:"minecraft:iron_block"},{Slot:1b,id:"minecraft:iron_block"},{Slot:2b,id:"minecraft:iron_block"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/storm_stick_charger
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:fire_charge"},{Slot:2b,id:"minecraft:air"}],1:[{Slot:0b,tag:{crazy_adventure:{radioactive_waste_barrel:1b}}},{Slot:1b,tag:{crazy_adventure:{uranium_core:1b}}},{Slot:2b,tag:{crazy_adventure:{radioactive_waste_barrel:1b}}}],2:[{Slot:0b,id:"minecraft:iron_block"},{Slot:1b,id:"minecraft:iron_block"},{Slot:2b,id:"minecraft:iron_block"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/fireball_stick_charger
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:obsidian"},{Slot:2b,id:"minecraft:air"}],1:[{Slot:0b,tag:{crazy_adventure:{radioactive_waste_barrel:1b}}},{Slot:1b,tag:{crazy_adventure:{uranium_core:1b}}},{Slot:2b,tag:{crazy_adventure:{radioactive_waste_barrel:1b}}}],2:[{Slot:0b,id:"minecraft:iron_block"},{Slot:1b,id:"minecraft:iron_block"},{Slot:2b,id:"minecraft:iron_block"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/shield_stick_charger

#Geiger Counter
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,id:"minecraft:air"},{Slot:1b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:2b,tag:{ctc:{id:"uranium_ingot"}}}],1:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:copper_ingot"},{Slot:2b,id:"minecraft:copper_ingot"}],2:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:copper_ingot"},{Slot:2b,id:"minecraft:copper_ingot"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/geiger_counter
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:1b,tag:{ctc:{id:"uranium_ingot"}}},{Slot:2b,id:"minecraft:air"}],1:[{Slot:0b,id:"minecraft:copper_ingot"},{Slot:1b,id:"minecraft:copper_ingot"},{Slot:2b,id:"minecraft:air"}],2:[{Slot:0b,id:"minecraft:copper_ingot"},{Slot:1b,id:"minecraft:copper_ingot"},{Slot:2b,id:"minecraft:air"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/geiger_counter


#Californium STUFF
#Californium Helmet
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,tag:{ctc:{id:"californium_ingot"}}},{Slot:1b,tag:{ctc:{id:"californium_ingot"}}},{Slot:2b,tag:{ctc:{id:"californium_ingot"}}}],1:[{Slot:0b,tag:{ctc:{id:"californium_ingot"}}},{Slot:1b,id:"minecraft:air"},{Slot:2b,tag:{ctc:{id:"californium_ingot"}}}]}} if data storage smithed.crafter:main root.temp{crafting_input:{2:[]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/californium_helmet
#Californium Chestplate
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,tag:{ctc:{id:"californium_ingot"}}},{Slot:1b,id:"minecraft:air"},{Slot:2b,tag:{ctc:{id:"californium_ingot"}}}],1:[{Slot:0b,tag:{ctc:{id:"californium_ingot"}}},{Slot:1b,tag:{ctc:{id:"californium_ingot"}}},{Slot:2b,tag:{ctc:{id:"californium_ingot"}}}],2:[{Slot:0b,tag:{ctc:{id:"californium_ingot"}}},{Slot:1b,tag:{ctc:{id:"californium_ingot"}}},{Slot:2b,tag:{ctc:{id:"californium_ingot"}}}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/californium_chestplate
#Californium Leggings
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,tag:{ctc:{id:"californium_ingot"}}},{Slot:1b,tag:{ctc:{id:"californium_ingot"}}},{Slot:2b,tag:{ctc:{id:"californium_ingot"}}}],1:[{Slot:0b,tag:{ctc:{id:"californium_ingot"}}},{Slot:1b,id:"minecraft:air"},{Slot:2b,tag:{ctc:{id:"californium_ingot"}}}],2:[{Slot:0b,tag:{ctc:{id:"californium_ingot"}}},{Slot:1b,id:"minecraft:air"},{Slot:2b,tag:{ctc:{id:"californium_ingot"}}}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/californium_leggings
#Californium Boots
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,tag:{ctc:{id:"californium_ingot"}}},{Slot:1b,id:"minecraft:air"},{Slot:2b,tag:{ctc:{id:"californium_ingot"}}}],1:[{Slot:0b,tag:{ctc:{id:"californium_ingot"}}},{Slot:1b,id:"minecraft:air"},{Slot:2b,tag:{ctc:{id:"californium_ingot"}}}]}} if data storage smithed.crafter:main root.temp{crafting_input:{2:[]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/californium_boots
#Californium Sword
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,tag:{ctc:{id:"californium_ingot"}}},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:air"}],1:[{Slot:0b,tag:{ctc:{id:"californium_ingot"}}},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:air"}],2:[{Slot:0b,id:"minecraft:stick"},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:air"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/californium_sword
#Californium Pickaxe
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,tag:{ctc:{id:"californium_ingot"}}},{Slot:1b,tag:{ctc:{id:"californium_ingot"}}},{Slot:2b,tag:{ctc:{id:"californium_ingot"}}}],1:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:stick"},{Slot:2b,id:"minecraft:air"}],2:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:stick"},{Slot:2b,id:"minecraft:air"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/californium_pickaxe
#Californium Axe
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,id:"minecraft:air"},{Slot:1b,tag:{ctc:{id:"californium_ingot"}}},{Slot:2b,tag:{ctc:{id:"californium_ingot"}}}],1:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:stick"},{Slot:2b,tag:{ctc:{id:"californium_ingot"}}}],2:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:stick"},{Slot:2b,id:"minecraft:air"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/californium_axe
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,id:"minecraft:air"},{Slot:1b,tag:{ctc:{id:"californium_ingot"}}},{Slot:2b,tag:{ctc:{id:"californium_ingot"}}}],1:[{Slot:0b,id:"minecraft:air"},{Slot:1b,tag:{ctc:{id:"californium_ingot"}}},{Slot:2b,id:"minecraft:stick"}],2:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:stick"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/californium_axe
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,tag:{ctc:{id:"californium_ingot"}}},{Slot:1b,tag:{ctc:{id:"californium_ingot"}}},{Slot:2b,id:"minecraft:air"}],1:[{Slot:0b,id:"minecraft:stick"},{Slot:1b,tag:{ctc:{id:"californium_ingot"}}},{Slot:2b,id:"minecraft:air"}],2:[{Slot:0b,id:"minecraft:stick"},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:air"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/californium_axe
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,tag:{ctc:{id:"californium_ingot"}}},{Slot:1b,tag:{ctc:{id:"californium_ingot"}}},{Slot:2b,id:"minecraft:air"}],1:[{Slot:0b,tag:{ctc:{id:"californium_ingot"}}},{Slot:1b,id:"minecraft:stick"},{Slot:2b,id:"minecraft:air"}],2:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:stick"},{Slot:2b,id:"minecraft:air"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/californium_axe
#Californium Hoe
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,tag:{ctc:{id:"californium_ingot"}}},{Slot:1b,tag:{ctc:{id:"californium_ingot"}}},{Slot:2b,id:"minecraft:air"}],1:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:stick"},{Slot:2b,id:"minecraft:air"}],2:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:stick"},{Slot:2b,id:"minecraft:air"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/californium_hoe
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,id:"minecraft:air"},{Slot:1b,tag:{ctc:{id:"californium_ingot"}}},{Slot:2b,tag:{ctc:{id:"californium_ingot"}}}],1:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:stick"},{Slot:2b,id:"minecraft:air"}],2:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:stick"},{Slot:2b,id:"minecraft:air"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/californium_hoe
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,id:"minecraft:air"},{Slot:1b,tag:{ctc:{id:"californium_ingot"}}},{Slot:2b,tag:{ctc:{id:"californium_ingot"}}}],1:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:stick"}],2:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:stick"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/californium_hoe
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,tag:{ctc:{id:"californium_ingot"}}},{Slot:1b,tag:{ctc:{id:"californium_ingot"}}},{Slot:2b,id:"minecraft:air"}],1:[{Slot:0b,id:"minecraft:stick"},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:air"}],2:[{Slot:0b,id:"minecraft:stick"},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:air"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/californium_hoe
#Californium Shovel
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,tag:{ctc:{id:"californium_ingot"}}},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:air"}],1:[{Slot:0b,id:"minecraft:stick"},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:air"}],2:[{Slot:0b,id:"minecraft:stick"},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:air"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/californium_shovel


#Uranium Core
	execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{crafting_input:{0:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:command_block",tag:{crazy_adventure:{californium_ingot:1b}}},{Slot:2b,id:"minecraft:air"}],1:[{Slot:0b,id:"minecraft:command_block",tag:{crazy_adventure:{californium_ingot:1b}}},{Slot:1b,tag:{ctc:{id:"uranium_core"}}},{Slot:2b,id:"minecraft:command_block",tag:{crazy_adventure:{californium_ingot:1b}}}],2:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:command_block",tag:{crazy_adventure:{californium_ingot:1b}}},{Slot:2b,id:"minecraft:air"}]}} run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/californium_core
