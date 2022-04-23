
#Others
	scoreboard players set #tick_2 crazy_adventure.data 0
	execute as @e[type=#energy:valid_block_entities,tag=crazy_adventure.destroyer,predicate=!crazy_adventure:check_destroyer] at @s run function crazy_adventure:destroy/all

	execute as @e[type=armor_stand,tag=crazy_adventure.custom_entity] at @s run function crazy_adventure:mobs/tick_2/main