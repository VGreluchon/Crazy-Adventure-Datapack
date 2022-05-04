
scoreboard players remove @s energy.storage 40
particle block stone ~ ~ ~ 1 1 1 1 10

scoreboard players add @s crazy_adventure.working 1
execute if score @s crazy_adventure.working matches 6 run loot insert ~ ~ ~ loot crazy_adventure:ore_extractor/lvl2
execute if score @s crazy_adventure.working matches 6 run scoreboard players set @s crazy_adventure.working 0
execute if score @s energy.storage matches ..39 run scoreboard players set @s crazy_adventure.working 0
