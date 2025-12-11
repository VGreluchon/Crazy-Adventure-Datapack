
#> crazy_adventure:v2.0.0/tick_2
#
# @within	crazy_adventure:v2.0.0/tick
#

# Reset timer
scoreboard players set #tick_2 crazy_adventure.data 1

# 2 ticks destroy detection (item_display only)
execute if score #total_custom_blocks crazy_adventure.data matches 1.. as @e[type=item_display,tag=crazy_adventure.custom_block,tag=!crazy_adventure.vanilla.minecraft_polished_deepslate,predicate=!crazy_adventure:check_vanilla_blocks] at @s run function crazy_adventure:custom_blocks/destroy

