
#> crazy_adventure:custom_blocks/californium_battery/destroy
#
# @executed	as @e[type=item_display,tag=...,predicate=!crazy_adventure:check_vanilla_blocks] & at @s
#
# @within	crazy_adventure:custom_blocks/_groups/minecraft_iron_block
#

# Replace the item with the custom one
execute as @n[type=item,nbt={Item:{id:"minecraft:iron_block"}},distance=..1] run function crazy_adventure:custom_blocks/californium_battery/replace_item

# Decrease count scores
scoreboard players remove #total_custom_blocks crazy_adventure.data 1
scoreboard players remove #total_vanilla_iron_block crazy_adventure.data 1
scoreboard players remove #total_californium_battery crazy_adventure.data 1

# Kill the custom block entity
kill @s

