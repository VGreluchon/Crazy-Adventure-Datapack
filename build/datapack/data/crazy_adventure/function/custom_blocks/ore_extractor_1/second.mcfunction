
#> crazy_adventure:custom_blocks/ore_extractor_1/second
#
# @executed	as @e[tag=crazy_adventure.second] & at @s
#
# @within	crazy_adventure:custom_blocks/second
#

# Consume energy
scoreboard players operation @s energy.storage -= @s crazy_adventure.energy_rate
particle block stone ~ ~ ~ 1 1 1 1 10

scoreboard players add @s crazy_adventure.working 1
execute if score @s crazy_adventure.working matches 5 run loot insert ~ ~ ~ loot crazy_adventure:ore_extractor/lvl1
execute if score @s crazy_adventure.working matches 5 run scoreboard players set @s crazy_adventure.working 0
execute if score @s energy.storage matches ..19 run scoreboard players set @s crazy_adventure.working 0

