
#Others
	scoreboard players set #second crazy_adventure.data 0
	scoreboard players add #minute crazy_adventure.data 1
	execute if score #minute crazy_adventure.data matches 60.. run function crazy_adventure:tick_minute
	execute as @a[sort=random] at @s run function crazy_adventure:opti/tick_second_players

#Custom Blocks
	execute as @e[type=#energy:valid_block_entities,tag=crazy_adventure.destroyer] at @s run function crazy_adventure:destroy/all
	execute as @e[type=glow_item_frame,tag=crazy_adventure.destroyer,sort=random] at @s run function crazy_adventure:opti/tick_second_glows

	execute as @e[type=zombie,tag=!crazy_adventure.miner_check,tag=!global.ignore,tag=!smithed.entity] at @s run function crazy_adventure:mobs/miner_check
	