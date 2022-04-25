#Consume a uranium ingot
scoreboard players set @s crazy_adventure.working 60
execute store result block ~ ~ ~ Items[{Slot:13b}].Count byte -0.999 run data get storage crazy_adventure:main Items[{Slot:13b}].Count -1

#Generate a radioactive waste
scoreboard players set #success crazy_adventure.data 0
execute store success score #success crazy_adventure.data if data storage crazy_adventure:main Items[{Slot:16b,tag:{crazy_adventure:{radioactive_waste:1b}}}]
execute if score #success crazy_adventure.data matches 1 store result block ~ ~ ~ Items[{Slot:16b}].Count byte -1 run data get storage crazy_adventure:main Items[{Slot:16b}].Count -1.001
execute if score #success crazy_adventure.data matches 0 run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/radioactive_waste

#Execute 
execute if score @s crazy_adventure.water matches 0 run summon tnt ~ ~ ~

scoreboard players remove @s crazy_adventure.water 5