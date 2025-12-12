
#> crazy_adventure:custom_blocks/banana_plant/replace_item
#
# @executed	as @n[type=item,nbt={Item:{id:"minecraft:end_rod"}},distance=..1]
#
# @within	crazy_adventure:custom_blocks/banana_plant/destroy [ as @n[type=item,nbt={Item:{id:"minecraft:end_rod"}},distance=..1] ]
#

# If silk touch applied
execute if score #is_silk_touch crazy_adventure.data matches 1 run data modify entity @s Item.id set from storage crazy_adventure:items all.banana_plant.id
execute if score #is_silk_touch crazy_adventure.data matches 1 run data modify entity @s Item.components set from storage crazy_adventure:items all.banana_plant.components

# Else, no silk touch
execute if score #is_silk_touch crazy_adventure.data matches 0 run data modify entity @s Item.id set from storage crazy_adventure:items all.banana.id
execute if score #is_silk_touch crazy_adventure.data matches 0 run data modify entity @s Item.components set from storage crazy_adventure:items all.banana.components

