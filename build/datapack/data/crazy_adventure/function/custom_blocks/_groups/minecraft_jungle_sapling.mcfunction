
#> crazy_adventure:custom_blocks/_groups/minecraft_jungle_sapling
#
# @executed	as @e[type=item_display,tag=...,predicate=!crazy_adventure:check_vanilla_blocks] & at @s
#
# @within	crazy_adventure:custom_blocks/destroy
#

execute if score #total_banana_sapling crazy_adventure.data matches 1.. if entity @s[tag=crazy_adventure.banana_sapling] run function crazy_adventure:custom_blocks/banana_sapling/destroy

