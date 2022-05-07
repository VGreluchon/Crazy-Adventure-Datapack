#Generate a radioactive waste
scoreboard players set #success crazy_adventure.data 0
execute store success score #success crazy_adventure.data if data storage crazy_adventure:main Items[{Slot:16b,tag:{crazy_adventure:{radioactive_waste:1b}}}]
execute if score #success crazy_adventure.data matches 1 store result block ~ ~ ~ Items[{Slot:16b}].Count byte -1 run data get storage crazy_adventure:main Items[{Slot:16b}].Count -1.001
execute if score #success crazy_adventure.data matches 0 run loot replace block ~ ~ ~ container.16 loot crazy_adventure:i/radioactive_waste

