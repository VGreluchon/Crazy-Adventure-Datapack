data modify storage crazy_adventure:main Inventory set from entity @s Inventory
execute if data storage crazy_adventure:main Inventory[{Slot:103b,tag:{crazy_adventure:{cave_helmet:1b}}}] run effect give @s night_vision 2 1 true

#Radiation system
tag @s add crazy_adventure.radiation
scoreboard players set #temp crazy_adventure.data 0
execute store result score #temp crazy_adventure.data if data storage crazy_adventure:main Inventory[{Slot:-106b,tag:{crazy_adventure:{anti_radiation_glove:1b}}}] run tag @s remove crazy_adventure.radiation
execute if score #temp crazy_adventure.data matches 0 store result score #temp crazy_adventure.data if data storage crazy_adventure:main Inventory[{Slot:103b,tag:{crazy_adventure:{anti_radiation_helmet:1b}}}] if data storage crazy_adventure:main Inventory[{Slot:102b,tag:{crazy_adventure:{anti_radiation_chestplate:1b}}}] if data storage crazy_adventure:main Inventory[{Slot:101b,tag:{crazy_adventure:{anti_radiation_leggings:1b}}}] if data storage crazy_adventure:main Inventory[{Slot:100b,tag:{crazy_adventure:{anti_radiation_boots:1b}}}] run tag @s remove crazy_adventure.radiation
execute if score #temp crazy_adventure.data matches 0 if data storage crazy_adventure:main Inventory[{tag:{crazy_adventure:{uranium_ore:1b}}}] run effect give @s wither 3 3 true
execute if score #temp crazy_adventure.data matches 0 if data storage crazy_adventure:main Inventory[{tag:{crazy_adventure:{uranium_ore:1b}}}] run scoreboard players add @s crazy_adventure.radiation 10
execute if score #temp crazy_adventure.data matches 0 if data storage crazy_adventure:main Inventory[{tag:{crazy_adventure:{uranium_block:1b}}}] run effect give @s wither 3 3 true
execute if score #temp crazy_adventure.data matches 0 if data storage crazy_adventure:main Inventory[{tag:{crazy_adventure:{uranium_block:1b}}}] run scoreboard players add @s crazy_adventure.radiation 10
execute if score #temp crazy_adventure.data matches 0 if data storage crazy_adventure:main Inventory[{tag:{crazy_adventure:{uranium_ingot:1b}}}] run effect give @s wither 3 3 true
execute if score #temp crazy_adventure.data matches 0 if data storage crazy_adventure:main Inventory[{tag:{crazy_adventure:{uranium_ingot:1b}}}] run scoreboard players add @s crazy_adventure.radiation 10
execute if score #temp crazy_adventure.data matches 0 if data storage crazy_adventure:main Inventory[{tag:{crazy_adventure:{radioactive_waste:1b}}}] run effect give @s wither 3 3 true
execute if score #temp crazy_adventure.data matches 0 if data storage crazy_adventure:main Inventory[{tag:{crazy_adventure:{radioactive_waste:1b}}}] run scoreboard players add @s crazy_adventure.radiation 10
execute if score #temp crazy_adventure.data matches 0 if data storage crazy_adventure:main Inventory[{tag:{crazy_adventure:{raw_uranium:1b}}}] run effect give @s wither 3 3 true
execute if score #temp crazy_adventure.data matches 0 if data storage crazy_adventure:main Inventory[{tag:{crazy_adventure:{raw_uranium:1b}}}] run scoreboard players add @s crazy_adventure.radiation 10
execute if score @s crazy_adventure.radiation matches 201.. run scoreboard players set @s crazy_adventure.radiation 200

execute if data storage crazy_adventure:main Inventory[{Slot:-106b,tag:{crazy_adventure:{anti_radiation_glove:1b}}}] run scoreboard players add @s crazy_adventure.offhand 1

execute if data storage crazy_adventure:main Inventory[{Slot:-106b,tag:{crazy_adventure:{geiger_counter:1b}}}] run title @s actionbar [{"translate":"Body Radiation : ","italic":false,"color":"aqua"},{"score":{"name":"@s","objective":"crazy_adventure.radiation"},"italic":false,"color":"yellow"},{"text":"/"},{"translate":"200 Bq","italic":false,"color":"yellow"},{"translate":"\nChange Rate : "},{"score":{"name":"@s","objective":"crazy_adventure.stockable_radiation"},"italic":false,"color":"yellow"},{"translate":" Bq"}]

execute if score @s crazy_adventure.offhand matches 6 run item modify entity @s weapon.offhand crazy_adventure:glove
execute if score @s crazy_adventure.offhand matches 6 run scoreboard players set @s crazy_adventure.offhand 0

tag @s remove crazy_adventure.ps.empty_generator
tag @s remove crazy_adventure.ps.empty_consumer
