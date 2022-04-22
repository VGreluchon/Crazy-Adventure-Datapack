
function simplenergy:generate/utils/random_position

scoreboard players set #max_attempts simplenergy.data 50
execute at @s run function simplenergy:generate/utils/find_adjacent_air

#Placing Ore (Take a larger zone by adding lines and changing position)
	execute at @s if block ~ ~ ~ #minecraft:dripstone_replaceable_blocks run function energy_datapack_template:place/template_ore
	execute at @s positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #minecraft:dripstone_replaceable_blocks run function energy_datapack_template:place/template_ore
	execute at @s positioned ~ ~0.5 ~0.5 if block ~ ~ ~ #minecraft:dripstone_replaceable_blocks run function energy_datapack_template:place/template_ore
	execute at @s positioned ~0.5 ~0.5 ~ if block ~ ~ ~ #minecraft:dripstone_replaceable_blocks run function energy_datapack_template:place/template_ore
	execute at @s positioned ~0.5 ~ ~0.5 if block ~ ~ ~ #minecraft:dripstone_replaceable_blocks run function energy_datapack_template:place/template_ore
	execute at @s positioned ~ ~0.5 ~ if block ~ ~ ~ #minecraft:dripstone_replaceable_blocks run function energy_datapack_template:place/template_ore

kill @s
