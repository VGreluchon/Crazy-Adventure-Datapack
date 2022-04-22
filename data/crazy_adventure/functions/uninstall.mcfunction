
scoreboard objectives remove crazy_adventure.config
scoreboard objectives remove crazy_adventure.data

data remove storage crazy_adventure:main all
data remove storage crazy_adventure:main temp

tp @e[tag=crazy_adventure.destroyer] 0 -1000 0
kill @e[tag=crazy_adventure.destroyer]

clear @a #crazy_adventure:items{crazy_adventure:{}}
