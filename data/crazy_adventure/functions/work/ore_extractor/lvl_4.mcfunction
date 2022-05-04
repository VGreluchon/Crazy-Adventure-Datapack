
scoreboard players remove @s energy.storage 200
particle block stone ~ ~ ~ 1 1 1 1 10

scoreboard players add @s crazy_adventure.working 1
execute if score @s crazy_adventure.working matches 4 run loot insert ~ ~ ~ loot crazy_adventure:ore_extractor/lvl4
execute if score @s crazy_adventure.working matches 4 run scoreboard players set @s crazy_adventure.working 0
execute if score @s energy.storage matches ..199 run scoreboard players set @s crazy_adventure.working 0
