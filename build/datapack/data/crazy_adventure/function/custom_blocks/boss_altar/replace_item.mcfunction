
#> crazy_adventure:custom_blocks/boss_altar/replace_item
#
# @executed	as @n[type=item,nbt={Item:{id:"minecraft:obsidian"}},distance=..1]
#
# @within	crazy_adventure:custom_blocks/boss_altar/destroy [ as @n[type=item,nbt={Item:{id:"minecraft:obsidian"}},distance=..1] ]
#

# Replace the item with the custom one
data modify entity @s Item.components set from storage crazy_adventure:items all.boss_altar.components
data modify entity @s Item.id set from storage crazy_adventure:items all.boss_altar.id

