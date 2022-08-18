execute store result score #slot crazy_adventure.data run data get storage crazy_adventure:main dropped_item.Slot

execute if score #slot crazy_adventure.data matches 0 run item replace block ~ ~ ~ container.0 with air
execute if score #slot crazy_adventure.data matches 1 run item replace block ~ ~ ~ container.1 with air
execute if score #slot crazy_adventure.data matches 2 run item replace block ~ ~ ~ container.2 with air
execute if score #slot crazy_adventure.data matches 3 run item replace block ~ ~ ~ container.3 with air
execute if score #slot crazy_adventure.data matches 4 run item replace block ~ ~ ~ container.4 with air
execute if score #slot crazy_adventure.data matches 5 run item replace block ~ ~ ~ container.5 with air
execute if score #slot crazy_adventure.data matches 6 run item replace block ~ ~ ~ container.6 with air
execute if score #slot crazy_adventure.data matches 7 run item replace block ~ ~ ~ container.7 with air
execute if score #slot crazy_adventure.data matches 8 run item replace block ~ ~ ~ container.8 with air
execute if score #slot crazy_adventure.data matches 9 run item replace block ~ ~ ~ container.9 with air
execute if score #slot crazy_adventure.data matches 10 run item replace block ~ ~ ~ container.10 with air
execute if score #slot crazy_adventure.data matches 11 run item replace block ~ ~ ~ container.11 with air
execute if score #slot crazy_adventure.data matches 12 run item replace block ~ ~ ~ container.12 with air
execute if score #slot crazy_adventure.data matches 13 run item replace block ~ ~ ~ container.13 with air
execute if score #slot crazy_adventure.data matches 14 run item replace block ~ ~ ~ container.14 with air
execute if score #slot crazy_adventure.data matches 15 run item replace block ~ ~ ~ container.15 with air
execute if score #slot crazy_adventure.data matches 16 run item replace block ~ ~ ~ container.16 with air
execute if score #slot crazy_adventure.data matches 17 run item replace block ~ ~ ~ container.17 with air
execute if score #slot crazy_adventure.data matches 18 run item replace block ~ ~ ~ container.18 with air
execute if score #slot crazy_adventure.data matches 19 run item replace block ~ ~ ~ container.19 with air
execute if score #slot crazy_adventure.data matches 20 run item replace block ~ ~ ~ container.20 with air
execute if score #slot crazy_adventure.data matches 21 run item replace block ~ ~ ~ container.21 with air
execute if score #slot crazy_adventure.data matches 22 run item replace block ~ ~ ~ container.22 with air
execute if score #slot crazy_adventure.data matches 23 run item replace block ~ ~ ~ container.23 with air
execute if score #slot crazy_adventure.data matches 24 run item replace block ~ ~ ~ container.24 with air
execute if score #slot crazy_adventure.data matches 25 run item replace block ~ ~ ~ container.25 with air
execute if score #slot crazy_adventure.data matches 26 run item replace block ~ ~ ~ container.26 with air


summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",Count:1b,tag:{simplenergy:{texture_item:1b}}},Tags:["crazy_adventure.drop"]}
data modify entity @e[type=item,tag=crazy_adventure.drop,limit=1,distance=..1] Item set from storage crazy_adventure:main dropped_item
tag @e[type=item,tag=crazy_adventure.drop,distance=..1] remove crazy_adventure.drop
kill @e[type=item,nbt={Item:{tag:{simplenergy:{texture_item:1b}}}},limit=1,distance=..1,sort=nearest]
data remove storage crazy_adventure:main dropped_item