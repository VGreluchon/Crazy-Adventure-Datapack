
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
	execute if entity @s[tag=crazy_adventure.ore_extractor_lvl_4] unless block ~ ~ ~ barrel run function crazy_adventure:destroy/storm_stick_charger
