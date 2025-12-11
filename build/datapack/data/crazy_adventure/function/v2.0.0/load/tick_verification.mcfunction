
#> crazy_adventure:v2.0.0/load/tick_verification
#
# @within	#minecraft:tick
#

execute if score #crazy_adventure.major load.status matches 2 if score #crazy_adventure.minor load.status matches 0 if score #crazy_adventure.patch load.status matches 0 run function crazy_adventure:v2.0.0/tick

