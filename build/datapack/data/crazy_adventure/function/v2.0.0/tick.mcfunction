
#> crazy_adventure:v2.0.0/tick
#
# @within	crazy_adventure:v2.0.0/load/tick_verification
#

# Timers
scoreboard players add #tick_2 crazy_adventure.data 1
scoreboard players add #second crazy_adventure.data 1
scoreboard players add #second_5 crazy_adventure.data 1
execute if score #tick_2 crazy_adventure.data matches 3.. run function crazy_adventure:v2.0.0/tick_2
execute if score #second crazy_adventure.data matches 20.. run function crazy_adventure:v2.0.0/second
execute if score #second_5 crazy_adventure.data matches 90.. run function crazy_adventure:v2.0.0/second_5

