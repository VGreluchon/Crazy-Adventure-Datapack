
#> crazy_adventure:custom_blocks/californium_ore/place_main
#
# @within	crazy_adventure:custom_blocks/place
#			crazy_adventure:calls/smart_ore_generation/veins/californium_ore [ at @s ]
#			crazy_adventure:calls/smart_ore_generation/veins/californium_ore [ at @s & positioned ~-0.4 ~-0.4 ~-0.4 ]
#			crazy_adventure:calls/smart_ore_generation/veins/californium_ore [ at @s & positioned ~-0.4 ~-0.4 ~0.0 ]
#			crazy_adventure:calls/smart_ore_generation/veins/californium_ore [ at @s & positioned ~-0.4 ~-0.4 ~0.4 ]
#			crazy_adventure:calls/smart_ore_generation/veins/californium_ore [ at @s & positioned ~-0.4 ~0.0 ~-0.4 ]
#			crazy_adventure:calls/smart_ore_generation/veins/californium_ore [ at @s & positioned ~-0.4 ~0.0 ~0.0 ]
#			crazy_adventure:calls/smart_ore_generation/veins/californium_ore [ at @s & positioned ~-0.4 ~0.0 ~0.4 ]
#			crazy_adventure:calls/smart_ore_generation/veins/californium_ore [ at @s & positioned ~-0.4 ~0.4 ~-0.4 ]
#			crazy_adventure:calls/smart_ore_generation/veins/californium_ore [ at @s & positioned ~-0.4 ~0.4 ~0.0 ]
#			crazy_adventure:calls/smart_ore_generation/veins/californium_ore [ at @s & positioned ~-0.4 ~0.4 ~0.4 ]
#			crazy_adventure:calls/smart_ore_generation/veins/californium_ore [ at @s & positioned ~0.0 ~-0.4 ~-0.4 ]
#			crazy_adventure:calls/smart_ore_generation/veins/californium_ore [ at @s & positioned ~0.0 ~-0.4 ~0.0 ]
#			crazy_adventure:calls/smart_ore_generation/veins/californium_ore [ at @s & positioned ~0.0 ~-0.4 ~0.4 ]
#			crazy_adventure:calls/smart_ore_generation/veins/californium_ore [ at @s & positioned ~0.0 ~0.0 ~-0.4 ]
#			crazy_adventure:calls/smart_ore_generation/veins/californium_ore [ at @s & positioned ~0.0 ~0.0 ~0.0 ]
#			crazy_adventure:calls/smart_ore_generation/veins/californium_ore [ at @s & positioned ~0.0 ~0.0 ~0.4 ]
#			crazy_adventure:calls/smart_ore_generation/veins/californium_ore [ at @s & positioned ~0.0 ~0.4 ~-0.4 ]
#			crazy_adventure:calls/smart_ore_generation/veins/californium_ore [ at @s & positioned ~0.0 ~0.4 ~0.0 ]
#			crazy_adventure:calls/smart_ore_generation/veins/californium_ore [ at @s & positioned ~0.0 ~0.4 ~0.4 ]
#			crazy_adventure:calls/smart_ore_generation/veins/californium_ore [ at @s & positioned ~0.4 ~-0.4 ~-0.4 ]
#			crazy_adventure:calls/smart_ore_generation/veins/californium_ore [ at @s & positioned ~0.4 ~-0.4 ~0.0 ]
#			crazy_adventure:calls/smart_ore_generation/veins/californium_ore [ at @s & positioned ~0.4 ~-0.4 ~0.4 ]
#			crazy_adventure:calls/smart_ore_generation/veins/californium_ore [ at @s & positioned ~0.4 ~0.0 ~-0.4 ]
#			crazy_adventure:calls/smart_ore_generation/veins/californium_ore [ at @s & positioned ~0.4 ~0.0 ~0.0 ]
#			crazy_adventure:calls/smart_ore_generation/veins/californium_ore [ at @s & positioned ~0.4 ~0.0 ~0.4 ]
#			crazy_adventure:calls/smart_ore_generation/veins/californium_ore [ at @s & positioned ~0.4 ~0.4 ~-0.4 ]
#			crazy_adventure:calls/smart_ore_generation/veins/californium_ore [ at @s & positioned ~0.4 ~0.4 ~0.0 ]
#			crazy_adventure:calls/smart_ore_generation/veins/californium_ore [ at @s & positioned ~0.4 ~0.4 ~0.4 ]
#

tag @s add crazy_adventure.placer
setblock ~ ~ ~ air strict
setblock ~ ~ ~ minecraft:polished_deepslate
execute align xyz positioned ~.5 ~.5 ~.5 summon item_display at @s run function crazy_adventure:custom_blocks/californium_ore/place_secondary
tag @s remove crazy_adventure.placer

# Increment count scores
scoreboard players add #total_custom_blocks crazy_adventure.data 1
scoreboard players add #total_vanilla_polished_deepslate crazy_adventure.data 1
scoreboard players add #total_californium_ore crazy_adventure.data 1

