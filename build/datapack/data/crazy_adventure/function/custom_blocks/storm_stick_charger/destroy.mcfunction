
#> crazy_adventure:custom_blocks/storm_stick_charger/destroy
#
# @executed	as @e[type=item_display,tag=...,predicate=!crazy_adventure:check_vanilla_blocks] & at @s
#
# @within	crazy_adventure:custom_blocks/_groups/minecraft_furnace
#

# Datapack Energy
function energy:v1/api/break_machine

# Replace the item with the custom one
execute as @n[type=item,nbt={Item:{id:"minecraft:furnace"}},distance=..1] run function crazy_adventure:custom_blocks/storm_stick_charger/replace_item

# Decrease count scores
scoreboard players remove #total_custom_blocks crazy_adventure.data 1
scoreboard players remove #total_vanilla_furnace crazy_adventure.data 1
scoreboard players remove #total_storm_stick_charger crazy_adventure.data 1

# Kill the custom block entity
kill @s

