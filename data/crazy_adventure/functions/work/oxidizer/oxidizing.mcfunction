#Oxidizing
scoreboard players remove @s energy.storage 100
scoreboard players add @s crazy_adventure.charges 1

#Particles
execute if score @s crazy_adventure.charges matches 1..5 run particle block copper_block ~ ~ ~ 1 1 1 1 20
execute if score @s crazy_adventure.charges matches 6..9 run particle block exposed_copper ~ ~ ~ 1 1 1 1 20
execute if score @s crazy_adventure.charges matches 10..13 run particle block weathered_copper ~ ~ ~ 1 1 1 1 20

#Change Block
execute if score @s crazy_adventure.charges matches 6 run loot replace block ~ ~ ~ container.13 loot minecraft:blocks/exposed_copper
execute if score @s crazy_adventure.charges matches 10 run loot replace block ~ ~ ~ container.13 loot minecraft:blocks/weathered_copper
execute if score @s crazy_adventure.charges matches 13 run data remove block ~ ~ ~ Items[{Slot:13b}]
execute if score @s crazy_adventure.charges matches 13 run function crazy_adventure:work/oxidizer/result

playsound block.copper.place block @a[distance=..5,tag=!simplenergy.ps.electric_furnace] ~ ~ ~ 0.25

