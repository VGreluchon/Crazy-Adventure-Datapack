
#> crazy_adventure:custom_blocks/californium_waste_barrel/place_main
#
# @within	crazy_adventure:custom_blocks/place
#

tag @s add crazy_adventure.placer
setblock ~ ~ ~ air strict
setblock ~ ~ ~ minecraft:gold_block
execute align xyz positioned ~.5 ~.5 ~.5 summon item_display at @s run function crazy_adventure:custom_blocks/californium_waste_barrel/place_secondary
tag @s remove crazy_adventure.placer

# Increment count scores
scoreboard players add #total_custom_blocks crazy_adventure.data 1
scoreboard players add #total_vanilla_gold_block crazy_adventure.data 1
scoreboard players add #total_californium_waste_barrel crazy_adventure.data 1

