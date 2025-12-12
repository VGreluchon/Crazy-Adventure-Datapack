
#> crazy_adventure:custom_blocks/amazing_nuclear_reactor/place_secondary
#
# @executed	at @s
#
# @within	crazy_adventure:custom_blocks/amazing_nuclear_reactor/place_main [ at @s ]
#

# Add convention and utils tags, and the custom block tag
tag @s add global.ignore
tag @s add global.ignore.kill
tag @s add smithed.entity
tag @s add smithed.block
tag @s add crazy_adventure.custom_block
tag @s add crazy_adventure.amazing_nuclear_reactor
tag @s add crazy_adventure.vanilla.minecraft_barrel

# Add a custom name
data merge entity @s {"CustomName": {"translate": "crazy_adventure.amazing_nuclear_reactor"}}

# Modify item display entity to match the custom block
item replace entity @s contents with minecraft:furnace[item_model="crazy_adventure:amazing_nuclear_reactor"]
data modify entity @s transformation.scale set value [1.002f,1.002f,1.002f]
data modify entity @s brightness set value {block:15,sky:15}

# Apply rotation
execute if score #rotation crazy_adventure.data matches 1 run data modify entity @s Rotation[0] set value 180.0f
execute if score #rotation crazy_adventure.data matches 2 run data modify entity @s Rotation[0] set value 270.0f
execute if score #rotation crazy_adventure.data matches 3 run data modify entity @s Rotation[0] set value 0.0f
execute if score #rotation crazy_adventure.data matches 4 run data modify entity @s Rotation[0] set value 90.0f

