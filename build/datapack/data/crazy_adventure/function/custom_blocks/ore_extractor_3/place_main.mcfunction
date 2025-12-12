
#> crazy_adventure:custom_blocks/ore_extractor_3/place_main
#
# @within	crazy_adventure:custom_blocks/place
#

tag @s add crazy_adventure.placer
function crazy_adventure:custom_blocks/get_rotation
setblock ~ ~ ~ air strict
execute if score #rotation crazy_adventure.data matches 1 run setblock ~ ~ ~ minecraft:barrel[facing=north]{"CustomName": {"translate": "crazy_adventure.ore_extractor_3"}}
execute if score #rotation crazy_adventure.data matches 2 run setblock ~ ~ ~ minecraft:barrel[facing=east]{"CustomName": {"translate": "crazy_adventure.ore_extractor_3"}}
execute if score #rotation crazy_adventure.data matches 3 run setblock ~ ~ ~ minecraft:barrel[facing=south]{"CustomName": {"translate": "crazy_adventure.ore_extractor_3"}}
execute if score #rotation crazy_adventure.data matches 4 run setblock ~ ~ ~ minecraft:barrel[facing=west]{"CustomName": {"translate": "crazy_adventure.ore_extractor_3"}}
execute align xyz positioned ~.5 ~.5 ~.5 summon item_display at @s run function crazy_adventure:custom_blocks/ore_extractor_3/place_secondary
tag @s remove crazy_adventure.placer

# Increment count scores
scoreboard players add #total_custom_blocks crazy_adventure.data 1
scoreboard players add #total_vanilla_barrel crazy_adventure.data 1
scoreboard players add #total_ore_extractor_3 crazy_adventure.data 1

