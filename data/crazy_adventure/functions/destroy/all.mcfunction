
#Materials
	execute if entity @s[tag=crazy_adventure.uranium_ore] unless block ~ ~ ~ diamond_ore run function crazy_adventure:destroy/uranium_ore
	execute if entity @s[tag=crazy_adventure.uranium_block] unless block ~ ~ ~ iron_block run function crazy_adventure:destroy/uranium_block
	
#Batteries
	execute if entity @s[tag=crazy_adventure.template_battery] unless block ~ ~ ~ cobbled_deepslate run function crazy_adventure:destroy/template_battery

#Generators
	execute if entity @s[tag=crazy_adventure.nuclear_reactor] unless block ~ ~ ~ barrel run function crazy_adventure:destroy/nuclear_reactor

#Power Consumers
	execute if entity @s[tag=crazy_adventure.empty_consumer] unless block ~ ~ ~ furnace run function crazy_adventure:destroy/empty_consumer
