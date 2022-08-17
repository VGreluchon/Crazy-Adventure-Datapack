
#Timer
	scoreboard players set #second crazy_adventure.data 0
	scoreboard players add #minute crazy_adventure.data 1
	scoreboard players add #second_5 crazy_adventure.data 1
	execute if score #minute crazy_adventure.data matches 60.. run function crazy_adventure:tick_minute
	execute if score #second_5 crazy_adventure.data matches 5.. run function crazy_adventure:tick_second_5

#Others
	execute as @a[sort=random] at @s run function crazy_adventure:opti/tick_second_players
	execute as @e[type=armor_stand,tag=crazy_adventure.battle_boss] at @s positioned ~ ~-1 ~ run function crazy_adventure:work/battle_boss/main
	execute as @e[type=zombie,tag=!crazy_adventure.miner_check,tag=!global.ignore,tag=!smithed.entity] at @s run function crazy_adventure:mobs/miner_check
	execute as @e[type=glow_item_frame,tag=crazy_adventure.destroyer,sort=random] at @s run function crazy_adventure:opti/tick_second_glows


