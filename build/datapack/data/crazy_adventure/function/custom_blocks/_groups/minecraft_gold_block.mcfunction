
#> crazy_adventure:custom_blocks/_groups/minecraft_gold_block
#
# @executed	as @e[type=item_display,tag=...,predicate=!crazy_adventure:check_vanilla_blocks] & at @s
#
# @within	crazy_adventure:custom_blocks/destroy
#

execute if score #total_californium_waste_barrel crazy_adventure.data matches 1.. if entity @s[tag=crazy_adventure.californium_waste_barrel] run function crazy_adventure:custom_blocks/californium_waste_barrel/destroy

