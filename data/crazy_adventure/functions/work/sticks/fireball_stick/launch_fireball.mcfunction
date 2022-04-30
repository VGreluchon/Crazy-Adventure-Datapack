execute store result score #x crazy_adventure.data run data get entity @s Pos[0] 1000000
execute store result score #y crazy_adventure.data run data get entity @s Pos[1] 1000000
execute store result score #z crazy_adventure.data run data get entity @s Pos[2] 1000000

tp @s ^ ^ ^0.001

execute store result score #dx crazy_adventure.data run data get entity @s Pos[0] 1000000
execute store result score #dy crazy_adventure.data run data get entity @s Pos[1] 1000000
execute store result score #dz crazy_adventure.data run data get entity @s Pos[2] 1000000

scoreboard players operation #dx crazy_adventure.data -= #x crazy_adventure.data
scoreboard players operation #dy crazy_adventure.data -= #y crazy_adventure.data
scoreboard players operation #dz crazy_adventure.data -= #z crazy_adventure.data

execute store result entity @s Motion[0] double 0.007 run scoreboard players get #dx crazy_adventure.data
execute store result entity @s Motion[1] double 0.007 run scoreboard players get #dy crazy_adventure.data
execute store result entity @s Motion[2] double 0.007 run scoreboard players get #dz crazy_adventure.data

tag @s remove crazy_adventure.fireball