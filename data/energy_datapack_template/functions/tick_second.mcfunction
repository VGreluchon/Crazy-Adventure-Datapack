
#Others
	scoreboard players set #second energy_datapack_template.data 0
	scoreboard players add #minute energy_datapack_template.data 1
	execute if score #minute energy_datapack_template.data matches 60.. run function energy_datapack_template:tick_minute
	execute as @a[sort=random] at @s run function energy_datapack_template:opti/tick_second_players

#Custom Blocks
	execute as @e[type=#energy:valid_block_entities,tag=energy_datapack_template.destroyer] at @s run function energy_datapack_template:destroy/all
	execute as @e[type=glow_item_frame,tag=energy_datapack_template.destroyer,sort=random] at @s run function energy_datapack_template:opti/tick_second_glows


