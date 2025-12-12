
#> crazy_adventure:v2.0.0/second
#
# @within	crazy_adventure:v2.0.0/tick
#

# Reset timer
scoreboard players set #second crazy_adventure.data 0

# 1 second break detection (any custom block)
execute if score #total_custom_blocks crazy_adventure.data matches 1.. as @e[type=#crazy_adventure:custom_blocks,tag=crazy_adventure.custom_block,tag=!crazy_adventure.vanilla.minecraft_polished_deepslate,predicate=!crazy_adventure:advanced_check_vanilla_blocks] at @s run function crazy_adventure:custom_blocks/destroy

# Custom blocks second functions
execute if score #second_entities crazy_adventure.data matches 1.. as @e[tag=crazy_adventure.second] at @s run function crazy_adventure:custom_blocks/second

