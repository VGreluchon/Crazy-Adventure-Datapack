
##Called by function tag #simplenergy:generate_ores
##You can configure the x & z variation
##You can configure the max height
##Values will be divided by 10 to keep a digit

#Generate Uranium Ore (x4) between world bottom & y=40
	scoreboard players set #xz_variation simplenergy.data 400
	scoreboard players set #max_height simplenergy.data 400
	execute as @e[limit=4] run summon marker ~ 0 ~ {Tags:["crazy_adventure.ore_pos"]}
	execute as @e[tag=crazy_adventure.ore_pos,predicate=crazy_adventure:in_dim/all] at @s run function crazy_adventure:calls/generate/uranium_ore


	scoreboard players set #xz_variation simplenergy.data 400
	scoreboard players set #max_height simplenergy.data 800
	execute as @e[limit=4] run summon marker ~ 0 ~ {Tags:["crazy_adventure.ore_pos"]}
	execute as @e[tag=crazy_adventure.ore_pos,predicate=crazy_adventure:in_dim/all] at @s run function crazy_adventure:calls/generate/californium_ore

kill @e[tag=crazy_adventure.ore_pos]

