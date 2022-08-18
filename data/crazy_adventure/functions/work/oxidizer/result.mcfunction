scoreboard players set #success crazy_adventure.data 0
execute store success score #success crazy_adventure.data if data storage crazy_adventure:main Items[{Slot:15b,id:"minecraft:oxidized_copper"}]
execute if score #success crazy_adventure.data matches 1 store result block ~ ~ ~ Items[{Slot:15b}].Count byte -1 run data get storage crazy_adventure:main Items[{Slot:15b}].Count -1.001
execute if score #success crazy_adventure.data matches 0 run loot replace block ~ ~ ~ container.15 loot minecraft:blocks/oxidized_copper
function crazy_adventure:work/oxidizer/resetscore
