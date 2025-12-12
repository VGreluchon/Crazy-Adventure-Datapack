
#> crazy_adventure:calls/common_signals/custom_block_destroy
#
# @executed	at @s & align xyz
#
# @within	#common_signals:signals/custom_block_destroy
#			crazy_adventure:calls/common_signals/on_ore_destroyed
#

execute as @e[tag=crazy_adventure.custom_block,dx=0,dy=0,dz=0] at @s run function crazy_adventure:custom_blocks/destroy

