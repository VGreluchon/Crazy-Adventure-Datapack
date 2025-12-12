
#> crazy_adventure:custom_blocks/banana_sapling/place_secondary
#
# @executed	at @s
#
# @within	crazy_adventure:custom_blocks/banana_sapling/place_main [ at @s ]
#

# Add convention and utils tags, and the custom block tag
tag @s add global.ignore
tag @s add global.ignore.kill
tag @s add smithed.entity
tag @s add smithed.block
tag @s add crazy_adventure.custom_block
tag @s add crazy_adventure.banana_sapling
tag @s add crazy_adventure.vanilla.minecraft_jungle_sapling

# Add a custom name
data merge entity @s {"CustomName": {"translate": "crazy_adventure.banana_sapling"}}

# Modify item display entity to match the custom block
item replace entity @s contents with minecraft:furnace[item_model="crazy_adventure:banana_sapling"]
data modify entity @s transformation.scale set value [1.002f,1.002f,1.002f]
data modify entity @s brightness set value {block:15,sky:15}

