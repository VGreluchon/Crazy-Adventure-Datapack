
#> crazy_adventure:custom_blocks/banana_sapling/search
#
# @executed	as the player & at current position
#
# @within	advancement crazy_adventure:custom_block_alternative/banana_sapling
#

# Advancement revoke
advancement revoke @s only crazy_adventure:custom_block_alternative/banana_sapling

# Execute the place function as and at the new placed item frame
tag @s add crazy_adventure.to_refund
execute as @e[type=item_frame,tag=crazy_adventure.new,tag=crazy_adventure.banana_sapling] at @s run function crazy_adventure:custom_blocks/banana_sapling/place_check
tag @s remove crazy_adventure.to_refund

