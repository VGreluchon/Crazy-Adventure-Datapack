
#> crazy_adventure:custom_blocks/_groups/minecraft_end_rod
#
# @executed	as @e[type=item_display,tag=...,predicate=!crazy_adventure:check_vanilla_blocks] & at @s
#
# @within	crazy_adventure:custom_blocks/destroy
#

execute if score #total_banana_plant crazy_adventure.data matches 1.. if entity @s[tag=crazy_adventure.banana_plant] run function crazy_adventure:custom_blocks/banana_plant/destroy

