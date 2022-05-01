
#Materials
	execute if entity @s[tag=crazy_adventure.uranium_ore] unless block ~ ~ ~ diamond_ore run function crazy_adventure:destroy/uranium_ore
	execute if entity @s[tag=crazy_adventure.uranium_block] unless block ~ ~ ~ iron_block run function crazy_adventure:destroy/uranium_block
	execute if entity @s[tag=crazy_adventure.radioactive_waste_barrel] unless block ~ ~ ~ iron_block run function crazy_adventure:destroy/radioactive_waste_barrel

	
#Batteries
	execute if entity @s[tag=crazy_adventure.uranium_battery] unless block ~ ~ ~ cobbled_deepslate run function crazy_adventure:destroy/uranium_battery

#Generators
	execute if entity @s[tag=crazy_adventure.nuclear_reactor] unless block ~ ~ ~ barrel run function crazy_adventure:destroy/nuclear_reactor

#Power Consumers
	execute if entity @s[tag=crazy_adventure.ore_extractor_lvl_1] unless block ~ ~ ~ barrel run function crazy_adventure:destroy/ore_extractor_lvl_1
	execute if entity @s[tag=crazy_adventure.ore_extractor_lvl_2] unless block ~ ~ ~ barrel run function crazy_adventure:destroy/ore_extractor_lvl_2
	execute if entity @s[tag=crazy_adventure.ore_extractor_lvl_3] unless block ~ ~ ~ barrel run function crazy_adventure:destroy/ore_extractor_lvl_3
	execute if entity @s[tag=crazy_adventure.ore_extractor_lvl_4] unless block ~ ~ ~ barrel run function crazy_adventure:destroy/ore_extractor_lvl_4
	execute if entity @s[tag=crazy_adventure.storm_stick_charger] unless block ~ ~ ~ barrel run function crazy_adventure:destroy/storm_stick_charger
	execute if entity @s[tag=crazy_adventure.shield_stick_charger] unless block ~ ~ ~ barrel run function crazy_adventure:destroy/shield_stick_charger
	execute if entity @s[tag=crazy_adventure.fireball_stick_charger] unless block ~ ~ ~ barrel run function crazy_adventure:destroy/fireball_stick_charger


	execute if entity @s[tag=crazy_adventure.banana_sapling] unless block ~ ~ ~ jungle_sapling run function crazy_adventure:destroy/banana_tree
	execute if entity @s[tag=crazy_adventure.banana_plant] unless block ~ ~ ~ end_rod run function crazy_adventure:destroy/banana_plant

	execute if entity @s[tag=crazy_adventure.californium_ore] unless block ~ ~ ~ emerald_ore run function crazy_adventure:destroy/californium_ore
	execute if entity @s[tag=crazy_adventure.californium_block] unless block ~ ~ ~ diamond_block run function crazy_adventure:destroy/californium_block