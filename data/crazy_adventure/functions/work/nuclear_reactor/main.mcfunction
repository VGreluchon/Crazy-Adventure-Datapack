scoreboard players add @s crazy_adventure.working 0
execute if score @s crazy_adventure.working matches 0 if data block ~ ~ ~ {Items:[{Slot:13b,tag:{ctc:{id:"uranium_ingot"}}}]} run function crazy_adventure:work/nuclear_reactor/burn
execute unless score @s crazy_adventure.working matches 0 run scoreboard players add @s energy.storage 150
execute unless score @s crazy_adventure.working matches 0 run scoreboard players remove @s crazy_adventure.working 1
execute unless score @s crazy_adventure.working matches 0 run particle dust 0.596 0.596 0.596 1 ~ ~ ~ 1 1 1 0 20

#optional: playsound crazy_adventure:empty_generator block @a[distance=..10,tag=!crazy_adventure.ps.empty_generator] ~ ~ ~ 0.25
#optional: tag @a[distance=..10] add crazy_adventure.ps.empty_generator

execute if score @s energy.storage >= @s energy.max_storage run scoreboard players operation @s energy.storage = @s energy.max_storage
