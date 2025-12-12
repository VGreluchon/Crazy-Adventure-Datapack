
#> crazy_adventure:custom_blocks/_groups/minecraft_barrel
#
# @executed	as @e[type=item_display,tag=...,predicate=!crazy_adventure:check_vanilla_blocks] & at @s
#
# @within	crazy_adventure:custom_blocks/destroy
#

execute if score #total_nuclear_reactor crazy_adventure.data matches 1.. if entity @s[tag=crazy_adventure.nuclear_reactor] run function crazy_adventure:custom_blocks/nuclear_reactor/destroy
execute if score #total_better_nuclear_reactor crazy_adventure.data matches 1.. if entity @s[tag=crazy_adventure.better_nuclear_reactor] run function crazy_adventure:custom_blocks/better_nuclear_reactor/destroy
execute if score #total_amazing_nuclear_reactor crazy_adventure.data matches 1.. if entity @s[tag=crazy_adventure.amazing_nuclear_reactor] run function crazy_adventure:custom_blocks/amazing_nuclear_reactor/destroy
execute if score #total_incredible_nuclear_reactor crazy_adventure.data matches 1.. if entity @s[tag=crazy_adventure.incredible_nuclear_reactor] run function crazy_adventure:custom_blocks/incredible_nuclear_reactor/destroy
execute if score #total_ore_extractor_1 crazy_adventure.data matches 1.. if entity @s[tag=crazy_adventure.ore_extractor_1] run function crazy_adventure:custom_blocks/ore_extractor_1/destroy
execute if score #total_ore_extractor_2 crazy_adventure.data matches 1.. if entity @s[tag=crazy_adventure.ore_extractor_2] run function crazy_adventure:custom_blocks/ore_extractor_2/destroy
execute if score #total_ore_extractor_3 crazy_adventure.data matches 1.. if entity @s[tag=crazy_adventure.ore_extractor_3] run function crazy_adventure:custom_blocks/ore_extractor_3/destroy
execute if score #total_ore_extractor_4 crazy_adventure.data matches 1.. if entity @s[tag=crazy_adventure.ore_extractor_4] run function crazy_adventure:custom_blocks/ore_extractor_4/destroy

