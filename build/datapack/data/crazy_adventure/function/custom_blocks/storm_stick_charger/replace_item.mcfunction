
#> crazy_adventure:custom_blocks/storm_stick_charger/replace_item
#
# @executed	as @n[type=item,nbt={Item:{id:"minecraft:furnace"}},distance=..1]
#
# @within	crazy_adventure:custom_blocks/storm_stick_charger/destroy [ as @n[type=item,nbt={Item:{id:"minecraft:furnace"}},distance=..1] ]
#

# Replace the item with the custom one
data modify entity @s Item.components set from storage crazy_adventure:items all.storm_stick_charger.components
data modify entity @s Item.id set from storage crazy_adventure:items all.storm_stick_charger.id

