
#> crazy_adventure:custom_blocks/californium_waste_barrel/replace_item
#
# @executed	as @n[type=item,nbt={Item:{id:"minecraft:gold_block"}},distance=..1]
#
# @within	crazy_adventure:custom_blocks/californium_waste_barrel/destroy [ as @n[type=item,nbt={Item:{id:"minecraft:gold_block"}},distance=..1] ]
#

# Replace the item with the custom one
data modify entity @s Item.components set from storage crazy_adventure:items all.californium_waste_barrel.components
data modify entity @s Item.id set from storage crazy_adventure:items all.californium_waste_barrel.id

