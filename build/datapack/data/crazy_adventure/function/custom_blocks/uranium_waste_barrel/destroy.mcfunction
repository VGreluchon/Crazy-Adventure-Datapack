
#> crazy_adventure:custom_blocks/uranium_waste_barrel/destroy
#
# @executed	as @e[type=item_display,tag=...,predicate=!crazy_adventure:check_vanilla_blocks] & at @s
#
# @within	crazy_adventure:custom_blocks/_groups/minecraft_emerald_block
#

# Replace the item with the custom one
execute as @n[type=item,nbt={Item:{id:"minecraft:emerald_block"}},distance=..1] run function crazy_adventure:custom_blocks/uranium_waste_barrel/replace_item

# Decrease count scores
scoreboard players remove #total_custom_blocks crazy_adventure.data 1
scoreboard players remove #total_vanilla_emerald_block crazy_adventure.data 1
scoreboard players remove #total_uranium_waste_barrel crazy_adventure.data 1

# Kill the custom block entity
kill @s

