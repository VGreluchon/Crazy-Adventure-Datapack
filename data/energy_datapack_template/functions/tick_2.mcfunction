
#Others
	scoreboard players set #tick_2 energy_datapack_template.data 0
	execute as @e[type=#energy:valid_block_entities,tag=energy_datapack_template.destroyer,predicate=!energy_datapack_template:check_destroyer] at @s run function energy_datapack_template:destroy/all
