
#> crazy_adventure:custom_blocks/banana_sapling/destroy
#
# @executed	as @e[type=item_display,tag=...,predicate=!crazy_adventure:check_vanilla_blocks] & at @s
#
# @within	crazy_adventure:custom_blocks/_groups/minecraft_jungle_sapling
#

# Replace the item with the custom one
execute as @n[type=item,nbt={Item:{id:"minecraft:jungle_sapling"}},distance=..1] run function crazy_adventure:custom_blocks/banana_sapling/replace_item

# Decrease count scores
scoreboard players remove #total_custom_blocks crazy_adventure.data 1
scoreboard players remove #total_vanilla_jungle_sapling crazy_adventure.data 1
scoreboard players remove #total_banana_sapling crazy_adventure.data 1

# Kill the custom block entity
kill @s

