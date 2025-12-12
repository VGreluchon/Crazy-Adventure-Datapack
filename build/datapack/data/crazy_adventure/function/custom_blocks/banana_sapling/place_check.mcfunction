
#> crazy_adventure:custom_blocks/banana_sapling/place_check
#
# @executed	as @e[type=item_frame,tag=...] & at @s
#
# @within	crazy_adventure:custom_blocks/banana_sapling/search [ as @e[type=item_frame,tag=...] & at @s ]
#

# Check if there is air block at the position
execute if block ~ ~ ~ air run return run function crazy_adventure:custom_blocks/banana_sapling/place_main

# If not air, give back the item to the player
tag @e[type=item] add crazy_adventure.temp
execute as @p[tag=crazy_adventure.to_refund] at @s run loot spawn ~ ~ ~ loot crazy_adventure:i/banana_sapling
data merge entity @n[type=item,tag=!crazy_adventure.temp] {PickupDelay:0s,Motion:[0.0d,0.0d,0.0d]}
data modify entity @n[type=item,tag=!crazy_adventure.temp] Owner set from entity @p[tag=crazy_adventure.to_refund] UUID
tag @n[type=item] remove crazy_adventure.temp

# And kill the item frame
kill @s

