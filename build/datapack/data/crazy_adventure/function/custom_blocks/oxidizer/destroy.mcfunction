
#> crazy_adventure:custom_blocks/oxidizer/destroy
#
# @executed	as @e[type=item_display,tag=...,predicate=!crazy_adventure:check_vanilla_blocks] & at @s
#
# @within	crazy_adventure:custom_blocks/_groups/minecraft_barrel
#

# Replace the item with the custom one
execute as @n[type=item,nbt={Item:{id:"minecraft:barrel"}},distance=..1] run function crazy_adventure:custom_blocks/oxidizer/replace_item

# Decrease count scores
scoreboard players remove #total_custom_blocks crazy_adventure.data 1
scoreboard players remove #total_vanilla_barrel crazy_adventure.data 1
scoreboard players remove #total_oxidizer crazy_adventure.data 1

# Kill the custom block entity
kill @s

