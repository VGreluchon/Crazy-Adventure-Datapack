data modify storage crazy_adventure:main Inventory set from entity @s Inventory
execute if data storage crazy_adventure:main Inventory[{Slot:103b,tag:{crazy_adventure:{cave_helmet:1b}}}] run effect give @s night_vision 2 1 true

#Radiation system
tag @s add crazy_adventure.radiation
scoreboard players set #temp crazy_adventure.data 0
execute store result score #temp crazy_adventure.data if data storage crazy_adventure:main Inventory[{Slot:103b,tag:{crazy_adventure:{anti_radiation_helmet:1b}}}] if data storage crazy_adventure:main Inventory[{Slot:102b,tag:{crazy_adventure:{anti_radiation_chestplate:1b}}}] if data storage crazy_adventure:main Inventory[{Slot:101b,tag:{crazy_adventure:{anti_radiation_leggings:1b}}}] if data storage crazy_adventure:main Inventory[{Slot:100b,tag:{crazy_adventure:{anti_radiation_boots:1b}}}] run tag @s remove crazy_adventure.radiation
execute if score #temp crazy_adventure.data matches 0 if data storage crazy_adventure:main Inventory[{tag:{crazy_adventure:{uranium_ore:1b}}}] run effect give @s wither 3 3 true
execute if score #temp crazy_adventure.data matches 0 if data storage crazy_adventure:main Inventory[{tag:{crazy_adventure:{uranium_block:1b}}}] run effect give @s wither 3 3 true
execute if score #temp crazy_adventure.data matches 0 if data storage crazy_adventure:main Inventory[{tag:{crazy_adventure:{uranium_ingot:1b}}}] run effect give @s wither 3 3 true
execute if score #temp crazy_adventure.data matches 0 if data storage crazy_adventure:main Inventory[{tag:{crazy_adventure:{radioactive_waste:1b}}}] run effect give @s wither 3 3 true
execute if score #temp crazy_adventure.data matches 0 if data storage crazy_adventure:main Inventory[{tag:{crazy_adventure:{raw_uranium:1b}}}] run effect give @s wither 3 3 true


tag @s remove crazy_adventure.ps.empty_generator
tag @s remove crazy_adventure.ps.empty_consumer
