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

execute if data storage crazy_adventure:main Inventory[{Slot:-106b,tag:{crazy_adventure:{anti_radiation_glove:1b}}}] run scoreboard players add @s crazy_adventure.offhand 1

execute if data storage crazy_adventure:main Inventory[{Slot:-106b,tag:{crazy_adventure:{geiger_counter:1b}}}] run title @s actionbar [{"translate":"Body Radiation : ","italic":false,"color":"aqua"},{"score":{"name":"@s","objective":"crazy_adventure.radiation"},"italic":false,"color":"yellow"},{"text":"/"},{"score":{"name":"@s","objective":"crazy_adventure.stockable_radiation"},"italic":false,"color":"yellow"},{"translate":" Bq"}]

execute if score @s crazy_adventure.offhand matches 6 run item modify entity @s weapon.offhand crazy_adventure:glove
execute if score @s crazy_adventure.offhand matches 6 run scoreboard players set @s crazy_adventure.offhand 0

execute unless score @s crazy_adventure.cooldown matches 5.. run scoreboard players add @s crazy_adventure.cooldown 1
execute if score @s crazy_adventure.right_click matches 1.. run function crazy_adventure:right_click/all





scoreboard players set @s crazy_adventure.stockable_radiation 200
execute if data storage crazy_adventure:main Inventory[{Slot:103b,id:"minecraft:iron_helmet"}] run scoreboard players add @s crazy_adventure.stockable_radiation 40
execute if data storage crazy_adventure:main Inventory[{Slot:102b,id:"minecraft:iron_chestplate"}] run scoreboard players add @s crazy_adventure.stockable_radiation 40
execute if data storage crazy_adventure:main Inventory[{Slot:101b,id:"minecraft:iron_leggings"}] run scoreboard players add @s crazy_adventure.stockable_radiation 40
execute if data storage crazy_adventure:main Inventory[{Slot:100b,id:"minecraft:iron_boots"}] run scoreboard players add @s crazy_adventure.stockable_radiation 40

execute if data storage crazy_adventure:main Inventory[{Slot:103b,id:"minecraft:diamond_helmet"}] run scoreboard players add @s crazy_adventure.stockable_radiation 70
execute if data storage crazy_adventure:main Inventory[{Slot:102b,id:"minecraft:diamond_chestplate"}] run scoreboard players add @s crazy_adventure.stockable_radiation 70
execute if data storage crazy_adventure:main Inventory[{Slot:101b,id:"minecraft:diamond_leggings"}] run scoreboard players add @s crazy_adventure.stockable_radiation 70
execute if data storage crazy_adventure:main Inventory[{Slot:100b,id:"minecraft:diamond_boots"}] run scoreboard players add @s crazy_adventure.stockable_radiation 70

execute if data storage crazy_adventure:main Inventory[{Slot:103b,tag:{ctc:{id:"simplunium_helmet"}}}] run scoreboard players add @s crazy_adventure.stockable_radiation 90
execute if data storage crazy_adventure:main Inventory[{Slot:102b,tag:{ctc:{id:"simplunium_chestplate"}}}] run scoreboard players add @s crazy_adventure.stockable_radiation 90
execute if data storage crazy_adventure:main Inventory[{Slot:101b,tag:{ctc:{id:"simplunium_leggings"}}}] run scoreboard players add @s crazy_adventure.stockable_radiation 90
execute if data storage crazy_adventure:main Inventory[{Slot:100b,tag:{ctc:{id:"simplunium_boots"}}}] run scoreboard players add @s crazy_adventure.stockable_radiation 90

execute if data storage crazy_adventure:main Inventory[{Slot:103b,id:"minecraft:netherite_helmet"}] run scoreboard players add @s crazy_adventure.stockable_radiation 110
execute if data storage crazy_adventure:main Inventory[{Slot:102b,id:"minecraft:netherite_chestplate"}] run scoreboard players add @s crazy_adventure.stockable_radiation 110
execute if data storage crazy_adventure:main Inventory[{Slot:101b,id:"minecraft:netherite_leggings"}] run scoreboard players add @s crazy_adventure.stockable_radiation 110
execute if data storage crazy_adventure:main Inventory[{Slot:100b,id:"minecraft:netherite_boots"}] run scoreboard players add @s crazy_adventure.stockable_radiation 110

execute if data storage crazy_adventure:main Inventory[{Slot:103b,tag:{crazy_adventure:{uranium_helmet:1b}}}] run scoreboard players add @s crazy_adventure.stockable_radiation 150
execute if data storage crazy_adventure:main Inventory[{Slot:102b,tag:{crazy_adventure:{uranium_chestplate:1b}}}] run scoreboard players add @s crazy_adventure.stockable_radiation 150
execute if data storage crazy_adventure:main Inventory[{Slot:101b,tag:{crazy_adventure:{uranium_leggings:1b}}}] run scoreboard players add @s crazy_adventure.stockable_radiation 150
execute if data storage crazy_adventure:main Inventory[{Slot:100b,tag:{crazy_adventure:{uranium_boots:1b}}}] run scoreboard players add @s crazy_adventure.stockable_radiation 150

execute if data storage crazy_adventure:main Inventory[{Slot:103b,tag:{crazy_adventure:{californium_helmet:1b}}}] run scoreboard players add @s crazy_adventure.stockable_radiation 200
execute if data storage crazy_adventure:main Inventory[{Slot:102b,tag:{crazy_adventure:{californium_chestplate:1b}}}] run scoreboard players add @s crazy_adventure.stockable_radiation 200
execute if data storage crazy_adventure:main Inventory[{Slot:101b,tag:{crazy_adventure:{californium_leggings:1b}}}] run scoreboard players add @s crazy_adventure.stockable_radiation 200
execute if data storage crazy_adventure:main Inventory[{Slot:100b,tag:{crazy_adventure:{californium_boots:1b}}}] run scoreboard players add @s crazy_adventure.stockable_radiation 200

execute if data storage crazy_adventure:main Inventory[{Slot:103b,tag:{crazy_adventure:{reinforced_californium_helmet:1b}}}] run scoreboard players add @s crazy_adventure.stockable_radiation 300
execute if data storage crazy_adventure:main Inventory[{Slot:102b,tag:{crazy_adventure:{reinforced_californium_chestplate:1b}}}] run scoreboard players add @s crazy_adventure.stockable_radiation 300
execute if data storage crazy_adventure:main Inventory[{Slot:101b,tag:{crazy_adventure:{reinforced_californium_leggings:1b}}}] run scoreboard players add @s crazy_adventure.stockable_radiation 300
execute if data storage crazy_adventure:main Inventory[{Slot:100b,tag:{crazy_adventure:{reinforced_californium_boots:1b}}}] run scoreboard players add @s crazy_adventure.stockable_radiation 300

execute if score @s crazy_adventure.radiation >= @s crazy_adventure.stockable_radiation run scoreboard players operation @s crazy_adventure.radiation = @s crazy_adventure.stockable_radiation


tag @s remove crazy_adventure.ps.empty_generator
tag @s remove crazy_adventure.ps.empty_consumer

