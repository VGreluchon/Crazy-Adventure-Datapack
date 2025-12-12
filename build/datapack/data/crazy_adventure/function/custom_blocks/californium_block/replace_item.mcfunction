
#> crazy_adventure:custom_blocks/californium_block/replace_item
#
# @executed	as @n[type=item,nbt={Item:{id:"minecraft:iron_block"}},distance=..1]
#
# @within	crazy_adventure:custom_blocks/californium_block/destroy [ as @n[type=item,nbt={Item:{id:"minecraft:iron_block"}},distance=..1] ]
#

# Replace the item with the custom one
data modify entity @s Item.components set from storage crazy_adventure:items all.californium_block.components
data modify entity @s Item.id set from storage crazy_adventure:items all.californium_block.id

