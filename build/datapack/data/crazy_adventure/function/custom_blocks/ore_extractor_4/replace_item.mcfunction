
#> crazy_adventure:custom_blocks/ore_extractor_4/replace_item
#
# @executed	as @n[type=item,nbt={Item:{id:"minecraft:barrel"}},distance=..1]
#
# @within	crazy_adventure:custom_blocks/ore_extractor_4/destroy [ as @n[type=item,nbt={Item:{id:"minecraft:barrel"}},distance=..1] ]
#

# Replace the item with the custom one
data modify entity @s Item.components set from storage crazy_adventure:items all.ore_extractor_4.components
data modify entity @s Item.id set from storage crazy_adventure:items all.ore_extractor_4.id

