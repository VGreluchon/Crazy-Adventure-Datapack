
#Copy block Items into a storage
data modify storage crazy_adventure:main Items set from block ~ ~ ~ Items

#Cooling
execute if data storage crazy_adventure:main Items[{Slot:11b,id:"minecraft:water_bucket"}] unless score @s crazy_adventure.water matches 100 run function crazy_adventure:work/nuclear_reactor/cooling

#Working process
execute if score @s crazy_adventure.working matches 0 if data storage crazy_adventure:main Items[{Slot:13b,tag:{ctc:{id:"uranium_ingot"}}}] unless data storage crazy_adventure:main Items[{Slot:16b,Count:64b}] run function crazy_adventure:work/nuclear_reactor/burn
execute unless score @s crazy_adventure.working matches 0 run scoreboard players add @s energy.storage 150
execute unless score @s crazy_adventure.working matches 0 run scoreboard players remove @s crazy_adventure.working 1
execute unless score @s crazy_adventure.working matches 0 run particle dust 0.596 0.596 0.596 1 ~ ~ ~ 1 1 1 0 20
execute unless score @s crazy_adventure.working matches 0 run effect give @a[distance=..3,tag=crazy_adventure.radiation] wither 3 3 true

#optional: playsound crazy_adventure:empty_generator block @a[distance=..10,tag=!crazy_adventure.ps.empty_generator] ~ ~ ~ 0.25
#optional: tag @a[distance=..10] add crazy_adventure.ps.empty_generator

execute if score @s energy.storage >= @s energy.max_storage run scoreboard players operation @s energy.storage = @s energy.max_storage

#Clear storage for memory
data remove storage crazy_adventure:main Items