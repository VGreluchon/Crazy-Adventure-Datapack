
function simplenergy:generate/utils/random_position

scoreboard players set #max_attempts simplenergy.data 50
execute at @s run function simplenergy:generate/utils/find_adjacent_air

#Placing Ore (Take a larger zone by adding lines and changing position)
	execute at @s if block ~ ~ ~ #crazy_adventure:for_uranium_ore run function crazy_adventure:place/uranium_ore
	execute at @s positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #crazy_adventure:for_uranium_ore run function crazy_adventure:place/uranium_ore
	execute at @s positioned ~ ~0.5 ~0.5 if block ~ ~ ~ #crazy_adventure:for_uranium_ore run function crazy_adventure:place/uranium_ore
	execute at @s positioned ~0.5 ~0.5 ~ if block ~ ~ ~ #crazy_adventure:for_uranium_ore run function crazy_adventure:place/uranium_ore
	execute at @s positioned ~0.5 ~ ~0.5 if block ~ ~ ~ #crazy_adventure:for_uranium_ore run function crazy_adventure:place/uranium_ore
	execute at @s positioned ~ ~0.5 ~ if block ~ ~ ~ #crazy_adventure:for_uranium_ore run function crazy_adventure:place/uranium_ore

kill @s
