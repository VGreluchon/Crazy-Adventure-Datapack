#Generate a Chicken Nugget
scoreboard players set #success crazy_adventure.data 0
execute store success score #success crazy_adventure.data if data storage crazy_adventure:main Items[{Slot:17b,tag:{crazy_adventure:{californium_nugget:1b}}}]
execute if score #success crazy_adventure.data matches 1 store result block ~ ~ ~ Items[{Slot:17b}].Count byte -1 run data get storage crazy_adventure:main Items[{Slot:17b}].Count -1.001
execute if score #success crazy_adventure.data matches 0 run loot replace block ~ ~ ~ container.17 loot crazy_adventure:i/californium_nugget

