
#> crazy_adventure:custom_blocks/banana_plant/destroy
#
# @executed	as @e[type=item_display,tag=...,predicate=!crazy_adventure:check_vanilla_blocks] & at @s
#
# @within	crazy_adventure:custom_blocks/_groups/minecraft_end_rod
#

# Check if the player has silk touch in mainhand
scoreboard players set #is_silk_touch crazy_adventure.data 0
execute as @p[distance=..10,gamemode=!spectator] if data entity @s SelectedItem.components."minecraft:enchantments"."minecraft:silk_touch" run scoreboard players set #is_silk_touch crazy_adventure.data 1

# If no item found, summon it
execute unless entity @n[type=item,nbt={Item:{id:"minecraft:end_rod"}},distance=..1] run loot spawn ~ ~ ~ loot {pools:[{entries:[{type:"minecraft:item",name:"minecraft:glass"}],rolls:1}]}

# Replace the item with the custom one
execute as @n[type=item,nbt={Item:{id:"minecraft:end_rod"}},distance=..1] run function crazy_adventure:custom_blocks/banana_plant/replace_item

# Decrease count scores
scoreboard players remove #total_custom_blocks crazy_adventure.data 1
scoreboard players remove #total_vanilla_end_rod crazy_adventure.data 1
scoreboard players remove #total_banana_plant crazy_adventure.data 1

# Kill the custom block entity
kill @s

