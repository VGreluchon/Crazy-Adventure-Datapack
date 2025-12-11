
#> crazy_adventure:custom_blocks/_groups/minecraft_cobblestone
#
# @executed	as @e[type=item_display,tag=...,predicate=!crazy_adventure:check_vanilla_blocks] & at @s
#
# @within	crazy_adventure:custom_blocks/destroy
#

execute if score #total_uranium_block crazy_adventure.data matches 1.. if entity @s[tag=crazy_adventure.uranium_block] run function crazy_adventure:custom_blocks/uranium_block/destroy

