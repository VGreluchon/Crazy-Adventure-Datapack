
#> crazy_adventure:custom_blocks/_groups/minecraft_emerald_block
#
# @executed	as @e[type=item_display,tag=...,predicate=!crazy_adventure:check_vanilla_blocks] & at @s
#
# @within	crazy_adventure:custom_blocks/destroy
#

execute if score #total_uranium_waste_barrel crazy_adventure.data matches 1.. if entity @s[tag=crazy_adventure.uranium_waste_barrel] run function crazy_adventure:custom_blocks/uranium_waste_barrel/destroy
execute if score #total_uranium_battery crazy_adventure.data matches 1.. if entity @s[tag=crazy_adventure.uranium_battery] run function crazy_adventure:custom_blocks/uranium_battery/destroy

