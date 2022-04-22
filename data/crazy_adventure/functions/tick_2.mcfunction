
#Others
	scoreboard players set #tick_2 crazy_adventure.data 0
	execute as @e[type=#energy:valid_block_entities,tag=crazy_adventure.destroyer,predicate=!crazy_adventure:check_destroyer] at @s run function crazy_adventure:destroy/all
