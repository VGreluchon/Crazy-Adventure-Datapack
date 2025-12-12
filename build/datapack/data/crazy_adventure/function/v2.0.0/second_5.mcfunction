
#> crazy_adventure:v2.0.0/second_5
#
# @within	crazy_adventure:v2.0.0/tick
#

# Reset timer
scoreboard players set #second_5 crazy_adventure.data -10

# 5 seconds break detection (item display only)
execute if score #total_custom_blocks crazy_adventure.data matches 1.. as @e[type=item_display,tag=crazy_adventure.custom_block,predicate=!crazy_adventure:advanced_check_vanilla_blocks] at @s run function crazy_adventure:custom_blocks/destroy

