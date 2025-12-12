
#> crazy_adventure:custom_blocks/destroy
#
# @executed	as @e[type=item_display,tag=...,predicate=!crazy_adventure:check_vanilla_blocks] & at @s
#
# @within	crazy_adventure:v2.0.0/tick_2 [ as @e[type=item_display,tag=...,predicate=!crazy_adventure:check_vanilla_blocks] & at @s ]
#			crazy_adventure:v2.0.0/second [ as @e[type=#crazy_adventure:custom_blocks,tag=...,predicate=!crazy_adventure:advanced_check_vanilla_blocks] & at @s ]
#			crazy_adventure:v2.0.0/second_5 [ as @e[type=item_display,tag=crazy_adventure.custom_block,predicate=!crazy_adventure:advanced_check_vanilla_blocks] & at @s ]
#			crazy_adventure:calls/common_signals/custom_block_destroy [ as @e[tag=crazy_adventure.custom_block,dx=0,dy=0,dz=0] & at @s ]
#

# Check for missing vanilla blocks
execute if score #total_vanilla_barrel crazy_adventure.data matches 1.. if entity @s[tag=crazy_adventure.vanilla.minecraft_barrel] unless block ~ ~ ~ minecraft:barrel run return run function crazy_adventure:custom_blocks/_groups/minecraft_barrel
execute if score #total_vanilla_cobblestone crazy_adventure.data matches 1.. if entity @s[tag=crazy_adventure.vanilla.minecraft_cobblestone] unless block ~ ~ ~ minecraft:cobblestone run return run function crazy_adventure:custom_blocks/_groups/minecraft_cobblestone
execute if score #total_vanilla_iron_block crazy_adventure.data matches 1.. if entity @s[tag=crazy_adventure.vanilla.minecraft_iron_block] unless block ~ ~ ~ minecraft:iron_block run return run function crazy_adventure:custom_blocks/_groups/minecraft_iron_block
execute if score #total_vanilla_polished_deepslate crazy_adventure.data matches 1.. if entity @s[tag=crazy_adventure.vanilla.minecraft_polished_deepslate] unless block ~ ~ ~ minecraft:polished_deepslate run return run function crazy_adventure:custom_blocks/_groups/minecraft_polished_deepslate

