tp @s ~ ~30 ~

#Select random number between 0 and #multiplier
scoreboard players set #multiplier crazy_adventure.data 16
scoreboard players set #half crazy_adventure.data 8
execute store result score #x crazy_adventure.data run data get entity @s UUID[0]
scoreboard players operation #x crazy_adventure.data %= #multiplier crazy_adventure.data
scoreboard players operation #x crazy_adventure.data -= #half crazy_adventure.data

execute store result score #z crazy_adventure.data run data get entity @s UUID[1]
scoreboard players operation #z crazy_adventure.data %= #multiplier crazy_adventure.data
scoreboard players operation #z crazy_adventure.data -= #half crazy_adventure.data

execute store result score #oldx crazy_adventure.data run data get entity @s Pos[0]
execute store result score #oldz crazy_adventure.data run data get entity @s Pos[2]
scoreboard players operation #x crazy_adventure.data += #oldx crazy_adventure.data
scoreboard players operation #z crazy_adventure.data += #oldz crazy_adventure.data
execute store result entity @s Pos[0] double 1 run scoreboard players get #x crazy_adventure.data
execute store result entity @s Pos[2] double 1 run scoreboard players get #z crazy_adventure.data


execute at @s run tp @s ~ ~ ~ facing ~ ~-30 ~
