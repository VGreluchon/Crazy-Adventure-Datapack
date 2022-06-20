
function simplenergy:generate/utils/random_position

scoreboard players set #max_attempts simplenergy.data 50
execute at @s run function simplenergy:generate/utils/find_adjacent_air

	execute at @s if block ~ ~ ~ dripstone_block run function crazy_adventure:place/californium_ore/main
	execute at @s positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ dripstone_block run function crazy_adventure:place/californium_ore/main
	execute at @s positioned ~ ~0.5 ~0.5 if block ~ ~ ~ dripstone_block run function crazy_adventure:place/californium_ore/main
	execute at @s positioned ~0.5 ~0.5 ~ if block ~ ~ ~ dripstone_block run function crazy_adventure:place/californium_ore/main
	execute at @s positioned ~0.5 ~ ~0.5 if block ~ ~ ~ dripstone_block run function crazy_adventure:place/californium_ore/main
	execute at @s positioned ~ ~0.5 ~ if block ~ ~ ~ dripstone_block run function crazy_adventure:place/californium_ore/main

kill @s
