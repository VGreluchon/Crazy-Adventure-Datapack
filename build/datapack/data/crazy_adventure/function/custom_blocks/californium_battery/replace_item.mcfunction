
#> crazy_adventure:custom_blocks/californium_battery/replace_item
#
# @executed	as @n[type=item,nbt={Item:{id:"minecraft:iron_block"}},distance=..1]
#
# @within	crazy_adventure:custom_blocks/californium_battery/destroy [ as @n[type=item,nbt={Item:{id:"minecraft:iron_block"}},distance=..1] ]
#

# Replace the item with the custom one
data modify entity @s Item.components set from storage crazy_adventure:items all.californium_battery.components
data modify entity @s Item.id set from storage crazy_adventure:items all.californium_battery.id

