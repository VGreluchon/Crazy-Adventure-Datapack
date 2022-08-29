
#Groups
	execute if entity @s[tag=crazy_adventure.destroy_polished_deepslate] unless block ~ ~ ~ polished_deepslate run function crazy_adventure:destroy/groups/polished_deepslate
	execute if entity @s[tag=crazy_adventure.destroy_yellow_concrete] unless block ~ ~ ~ yellow_concrete run function crazy_adventure:destroy/groups/yellow_concrete
	execute if entity @s[tag=crazy_adventure.destroy_netherite_block] unless block ~ ~ ~ netherite_block run function crazy_adventure:destroy/groups/netherite_block
	execute if entity @s[tag=crazy_adventure.destroy_barrel] unless block ~ ~ ~ barrel run function crazy_adventure:destroy/groups/barrel

#Ungrouped
	execute if entity @s[tag=crazy_adventure.uranium_block] unless block ~ ~ ~ iron_block run function crazy_adventure:destroy/uranium_block
	execute if entity @s[tag=crazy_adventure.uranium_battery] unless block ~ ~ ~ lime_concrete run function crazy_adventure:destroy/uranium_battery
	execute if entity @s[tag=crazy_adventure.californium_battery] unless block ~ ~ ~ white_concrete run function crazy_adventure:destroy/californium_battery
	execute if entity @s[tag=crazy_adventure.californium_block] unless block ~ ~ ~ diamond_block run function crazy_adventure:destroy/californium_block
	execute if entity @s[tag=crazy_adventure.banana_sapling] unless block ~ ~ ~ jungle_sapling run function crazy_adventure:destroy/banana_tree
	execute if entity @s[tag=crazy_adventure.banana_plant] unless block ~ ~ ~ end_rod run function crazy_adventure:destroy/banana_plant

#Update old ores
	execute if entity @s[tag=crazy_adventure.californium_ore,tag=!crazy_adventure.destroy_polished_deepslate] run function crazy_adventure:place/californium_ore/main
	execute if entity @s[tag=crazy_adventure.uranium_ore,tag=!crazy_adventure.destroy_polished_deepslate] run function crazy_adventure:place/uranium_ore/main
	kill @s[tag=crazy_adventure.californium_ore,tag=!crazy_adventure.destroy_polished_deepslate]
	kill @s[tag=crazy_adventure.uranium_ore,tag=!crazy_adventure.destroy_polished_deepslate]
