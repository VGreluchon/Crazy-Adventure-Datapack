
#> crazy_adventure:custom_blocks/get_rotation
#
# @within	???
#

# Set up score
scoreboard players set #rotation crazy_adventure.data 0

# Player case
execute if score #rotation crazy_adventure.data matches 0 if entity @s[y_rotation=-46..45] run scoreboard players set #rotation crazy_adventure.data 1
execute if score #rotation crazy_adventure.data matches 0 if entity @s[y_rotation=45..135] run scoreboard players set #rotation crazy_adventure.data 2
execute if score #rotation crazy_adventure.data matches 0 if entity @s[y_rotation=135..225] run scoreboard players set #rotation crazy_adventure.data 3
execute if score #rotation crazy_adventure.data matches 0 if entity @s[y_rotation=225..315] run scoreboard players set #rotation crazy_adventure.data 4

# Predicate case
execute if score #rotation crazy_adventure.data matches 0 if predicate crazy_adventure:facing/north run scoreboard players set #rotation crazy_adventure.data 1
execute if score #rotation crazy_adventure.data matches 0 if predicate crazy_adventure:facing/east run scoreboard players set #rotation crazy_adventure.data 2
execute if score #rotation crazy_adventure.data matches 0 if predicate crazy_adventure:facing/south run scoreboard players set #rotation crazy_adventure.data 3
execute if score #rotation crazy_adventure.data matches 0 if predicate crazy_adventure:facing/west run scoreboard players set #rotation crazy_adventure.data 4
# No more cases for now

