
#Materials
	execute if entity @s[tag=crazy_adventure.template_ore] unless block ~ ~ ~ diamond_ore run function crazy_adventure:destroy/template_ore
	execute if entity @s[tag=crazy_adventure.template_block] unless block ~ ~ ~ iron_block run function crazy_adventure:destroy/template_block

#Batteries
	execute if entity @s[tag=crazy_adventure.template_battery] unless block ~ ~ ~ cobbled_deepslate run function crazy_adventure:destroy/template_battery

#Generators
	execute if entity @s[tag=crazy_adventure.empty_generator] unless block ~ ~ ~ furnace run function crazy_adventure:destroy/empty_generator

#Power Consumers
	execute if entity @s[tag=crazy_adventure.empty_consumer] unless block ~ ~ ~ furnace run function crazy_adventure:destroy/empty_consumer
