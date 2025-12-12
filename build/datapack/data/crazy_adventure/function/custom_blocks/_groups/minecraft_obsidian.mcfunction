
#> crazy_adventure:custom_blocks/_groups/minecraft_obsidian
#
# @executed	as @e[type=item_display,tag=...,predicate=!crazy_adventure:check_vanilla_blocks] & at @s
#
# @within	crazy_adventure:custom_blocks/destroy
#

execute if score #total_boss_altar crazy_adventure.data matches 1.. if entity @s[tag=crazy_adventure.boss_altar] run function crazy_adventure:custom_blocks/boss_altar/destroy

