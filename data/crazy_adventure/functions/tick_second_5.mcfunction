
#Timer
	scoreboard players set #second_5 crazy_adventure.data 0

#Others
	execute as @e[type=#energy:valid_block_entities,tag=crazy_adventure.destroyer] at @s run function crazy_adventure:destroy/all
