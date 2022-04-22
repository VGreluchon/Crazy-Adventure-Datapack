
#Materials
	execute if entity @s[tag=energy_datapack_template.template_ore] unless block ~ ~ ~ diamond_ore run function energy_datapack_template:destroy/template_ore
	execute if entity @s[tag=energy_datapack_template.template_block] unless block ~ ~ ~ iron_block run function energy_datapack_template:destroy/template_block

#Batteries
	execute if entity @s[tag=energy_datapack_template.template_battery] unless block ~ ~ ~ cobbled_deepslate run function energy_datapack_template:destroy/template_battery

#Generators
	execute if entity @s[tag=energy_datapack_template.empty_generator] unless block ~ ~ ~ furnace run function energy_datapack_template:destroy/empty_generator

#Power Consumers
	execute if entity @s[tag=energy_datapack_template.empty_consumer] unless block ~ ~ ~ furnace run function energy_datapack_template:destroy/empty_consumer
