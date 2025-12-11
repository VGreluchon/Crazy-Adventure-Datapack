
#> crazy_adventure:v2.0.0/load/resolve
#
# @within	#crazy_adventure:resolve
#

# If correct version, load the datapack
execute if score #crazy_adventure.major load.status matches 2 if score #crazy_adventure.minor load.status matches 0 if score #crazy_adventure.patch load.status matches 0 run function crazy_adventure:v2.0.0/load/main

