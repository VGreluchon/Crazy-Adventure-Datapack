
#> crazy_adventure:v2.0.0/load/enumerate
#
# @within	#crazy_adventure:enumerate
#

# If current major is too low, set it to the current major
execute unless score #crazy_adventure.major load.status matches 2.. run scoreboard players set #crazy_adventure.major load.status 2

# If current minor is too low, set it to the current minor (only if major is correct)
execute if score #crazy_adventure.major load.status matches 2 unless score #crazy_adventure.minor load.status matches 0.. run scoreboard players set #crazy_adventure.minor load.status 0

# If current patch is too low, set it to the current patch (only if major and minor are correct)
execute if score #crazy_adventure.major load.status matches 2 if score #crazy_adventure.minor load.status matches 0 unless score #crazy_adventure.patch load.status matches 0.. run scoreboard players set #crazy_adventure.patch load.status 0

