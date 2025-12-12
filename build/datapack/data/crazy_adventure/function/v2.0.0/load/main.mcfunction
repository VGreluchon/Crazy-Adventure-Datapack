
#> crazy_adventure:v2.0.0/load/main
#
# @within	crazy_adventure:v2.0.0/load/resolve
#

# Avoiding multiple executions of the same load function
execute unless score #crazy_adventure.loaded load.status matches 1 run function crazy_adventure:v2.0.0/load/secondary

