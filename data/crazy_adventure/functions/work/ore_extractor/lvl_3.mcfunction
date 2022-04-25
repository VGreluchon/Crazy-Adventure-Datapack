
scoreboard players remove @s energy.storage 30
particle block stone ~ ~ ~ 1 1 1 1 1

scoreboard players add @s crazy_adventure.working 1
execute if score @s crazy_adventure.working matches 5 run loot insert ~ ~ ~ loot crazy_adventure:ore_extractor/lvl3
execute if score @s crazy_adventure.working matches 5 run scoreboard players set @s crazy_adventure.working 0
execute if score @s energy.storage matches ..29 run scoreboard players set @s crazy_adventure.working 0
