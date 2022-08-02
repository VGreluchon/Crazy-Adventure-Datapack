
advancement revoke @s only crazy_adventure:inventory_changed

#Storage define
data modify storage crazy_adventure:main Inventory set from entity @s Inventory

#Inventory conditions
tag @s remove crazy_adventure.state.cave_helmet
tag @s remove crazy_adventure.state.geiger_counter
execute if data storage crazy_adventure:main Inventory[{Slot:103b}].tag.crazy_adventure.cave_helmet run tag @s add crazy_adventure.state.cave_helmet
execute if data storage crazy_adventure:main Inventory[{Slot:-106b}].tag.crazy_adventure.geiger_counter run tag @s add crazy_adventure.state.geiger_counter

##Radiation system
tag @s remove crazy_adventure.radiation
scoreboard players set #state crazy_adventure.data 0
execute if score #state crazy_adventure.data matches 0 if data storage crazy_adventure:main Inventory[].tag.crazy_adventure.uranium_ore run scoreboard players set #state crazy_adventure.data 1
execute if score #state crazy_adventure.data matches 0 if data storage crazy_adventure:main Inventory[].tag.crazy_adventure.uranium_block run scoreboard players set #state crazy_adventure.data 1
execute if score #state crazy_adventure.data matches 0 if data storage crazy_adventure:main Inventory[].tag.crazy_adventure.uranium_ingot run scoreboard players set #state crazy_adventure.data 1
execute if score #state crazy_adventure.data matches 0 if data storage crazy_adventure:main Inventory[].tag.crazy_adventure.radioactive_waste run scoreboard players set #state crazy_adventure.data 1
execute if score #state crazy_adventure.data matches 0 if data storage crazy_adventure:main Inventory[].tag.crazy_adventure.raw_uranium run scoreboard players set #state crazy_adventure.data 1
execute if score #state crazy_adventure.data matches 1 if data storage crazy_adventure:main Inventory[{Slot:-106b}].tag.crazy_adventure.anti_radiation_glove run scoreboard players set #state crazy_adventure.data 0
execute if score #state crazy_adventure.data matches 1 if data storage crazy_adventure:main Inventory[{Slot:103b}].tag.crazy_adventure.anti_radiation_helmet if data storage crazy_adventure:main Inventory[{Slot:102b}].tag.crazy_adventure.anti_radiation_chestplate if data storage crazy_adventure:main Inventory[{Slot:101b}].tag.crazy_adventure.anti_radiation_leggings if data storage crazy_adventure:main Inventory[{Slot:100b}].tag.crazy_adventure.anti_radiation_boots run scoreboard players set #state crazy_adventure.data 0
execute if score #state crazy_adventure.data matches 1 if data storage crazy_adventure:main Inventory[{Slot:103b}].tag.crazy_adventure.uranium_helmet run scoreboard players set #state crazy_adventure.data 0
execute if score #state crazy_adventure.data matches 1 if data storage crazy_adventure:main Inventory[{Slot:102b}].tag.crazy_adventure.uranium_chestplate run scoreboard players set #state crazy_adventure.data 0
execute if score #state crazy_adventure.data matches 1 if data storage crazy_adventure:main Inventory[{Slot:101b}].tag.crazy_adventure.uranium_leggings run scoreboard players set #state crazy_adventure.data 0
execute if score #state crazy_adventure.data matches 1 if data storage crazy_adventure:main Inventory[{Slot:100b}].tag.crazy_adventure.uranium_boots run scoreboard players set #state crazy_adventure.data 0
execute if score #state crazy_adventure.data matches 1 if data storage crazy_adventure:main Inventory[{Slot:103b}].tag.crazy_adventure.californium_helmet run scoreboard players set #state crazy_adventure.data 0
execute if score #state crazy_adventure.data matches 1 if data storage crazy_adventure:main Inventory[{Slot:102b}].tag.crazy_adventure.californium_chestplate run scoreboard players set #state crazy_adventure.data 0
execute if score #state crazy_adventure.data matches 1 if data storage crazy_adventure:main Inventory[{Slot:101b}].tag.crazy_adventure.californium_leggings run scoreboard players set #state crazy_adventure.data 0
execute if score #state crazy_adventure.data matches 1 if data storage crazy_adventure:main Inventory[{Slot:100b}].tag.crazy_adventure.californium_boots run scoreboard players set #state crazy_adventure.data 0
execute if score #state crazy_adventure.data matches 1 run tag @s add crazy_adventure.radiation
scoreboard players set @s crazy_adventure.stockable_radiation 200
execute if data storage crazy_adventure:main Inventory[{Slot:103b,id:"minecraft:iron_helmet"}] run scoreboard players add @s crazy_adventure.stockable_radiation 40
execute if data storage crazy_adventure:main Inventory[{Slot:102b,id:"minecraft:iron_chestplate"}] run scoreboard players add @s crazy_adventure.stockable_radiation 40
execute if data storage crazy_adventure:main Inventory[{Slot:101b,id:"minecraft:iron_leggings"}] run scoreboard players add @s crazy_adventure.stockable_radiation 40
execute if data storage crazy_adventure:main Inventory[{Slot:100b,id:"minecraft:iron_boots"}] run scoreboard players add @s crazy_adventure.stockable_radiation 40
execute if data storage crazy_adventure:main Inventory[{Slot:103b,id:"minecraft:diamond_helmet"}] run scoreboard players add @s crazy_adventure.stockable_radiation 70
execute if data storage crazy_adventure:main Inventory[{Slot:102b,id:"minecraft:diamond_chestplate"}] run scoreboard players add @s crazy_adventure.stockable_radiation 70
execute if data storage crazy_adventure:main Inventory[{Slot:101b,id:"minecraft:diamond_leggings"}] run scoreboard players add @s crazy_adventure.stockable_radiation 70
execute if data storage crazy_adventure:main Inventory[{Slot:100b,id:"minecraft:diamond_boots"}] run scoreboard players add @s crazy_adventure.stockable_radiation 70
execute if data storage crazy_adventure:main Inventory[{Slot:103b}].tag.ctc{id:"simplunium_helmet"} run scoreboard players add @s crazy_adventure.stockable_radiation 90
execute if data storage crazy_adventure:main Inventory[{Slot:102b}].tag.ctc{id:"simplunium_chestplate"} run scoreboard players add @s crazy_adventure.stockable_radiation 90
execute if data storage crazy_adventure:main Inventory[{Slot:101b}].tag.ctc{id:"simplunium_leggings"} run scoreboard players add @s crazy_adventure.stockable_radiation 90
execute if data storage crazy_adventure:main Inventory[{Slot:100b}].tag.ctc{id:"simplunium_boots"} run scoreboard players add @s crazy_adventure.stockable_radiation 90
execute if data storage crazy_adventure:main Inventory[{Slot:103b,id:"minecraft:netherite_helmet"}] run scoreboard players add @s crazy_adventure.stockable_radiation 110
execute if data storage crazy_adventure:main Inventory[{Slot:102b,id:"minecraft:netherite_chestplate"}] run scoreboard players add @s crazy_adventure.stockable_radiation 110
execute if data storage crazy_adventure:main Inventory[{Slot:101b,id:"minecraft:netherite_leggings"}] run scoreboard players add @s crazy_adventure.stockable_radiation 110
execute if data storage crazy_adventure:main Inventory[{Slot:100b,id:"minecraft:netherite_boots"}] run scoreboard players add @s crazy_adventure.stockable_radiation 110
execute store result score #radiation crazy_adventure.data run data get storage crazy_adventure:main Inventory[{Slot:103b}].tag.crazy_adventure.radiation
scoreboard players operation @s crazy_adventure.stockable_radiation += #radiation crazy_adventure.data
execute store result score #radiation crazy_adventure.data run data get storage crazy_adventure:main Inventory[{Slot:102b}].tag.crazy_adventure.radiation
scoreboard players operation @s crazy_adventure.stockable_radiation += #radiation crazy_adventure.data
execute store result score #radiation crazy_adventure.data run data get storage crazy_adventure:main Inventory[{Slot:101b}].tag.crazy_adventure.radiation
scoreboard players operation @s crazy_adventure.stockable_radiation += #radiation crazy_adventure.data
execute store result score #radiation crazy_adventure.data run data get storage crazy_adventure:main Inventory[{Slot:100b}].tag.crazy_adventure.radiation
scoreboard players operation @s crazy_adventure.stockable_radiation += #radiation crazy_adventure.data
#Californium : 250, Nuclear: 600

#Memory dump
data remove storage crazy_adventure:main Inventory

