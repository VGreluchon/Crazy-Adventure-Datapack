
#> crazy_adventure:custom_blocks/banana_sapling/place_main
#
# @executed	as @e[type=item_frame,tag=...] & at @s
#
# @within	crazy_adventure:custom_blocks/banana_sapling/place_check
#

tag @s add crazy_adventure.placer
setblock ~ ~ ~ air strict
setblock ~ ~ ~ minecraft:jungle_sapling
execute align xyz positioned ~.5 ~.5 ~.5 summon item_display at @s run function crazy_adventure:custom_blocks/banana_sapling/place_secondary
tag @s remove crazy_adventure.placer

# Increment count scores
scoreboard players add #total_custom_blocks crazy_adventure.data 1
scoreboard players add #total_vanilla_jungle_sapling crazy_adventure.data 1
scoreboard players add #total_banana_sapling crazy_adventure.data 1

kill @s[type=item_frame]

