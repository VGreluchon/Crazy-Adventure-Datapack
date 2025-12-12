
#> crazy_adventure:custom_blocks/_groups/minecraft_polished_deepslate
#
# @executed	as @e[type=item_display,tag=...,predicate=!crazy_adventure:check_vanilla_blocks] & at @s
#
# @within	crazy_adventure:custom_blocks/destroy
#

execute if score #total_uranium_ore crazy_adventure.data matches 1.. if entity @s[tag=crazy_adventure.uranium_ore] run function crazy_adventure:custom_blocks/uranium_ore/destroy
execute if score #total_deepslate_uranium_ore crazy_adventure.data matches 1.. if entity @s[tag=crazy_adventure.deepslate_uranium_ore] run function crazy_adventure:custom_blocks/deepslate_uranium_ore/destroy
execute if score #total_californium_ore crazy_adventure.data matches 1.. if entity @s[tag=crazy_adventure.californium_ore] run function crazy_adventure:custom_blocks/californium_ore/destroy

