
effect give @s[tag=crazy_adventure.radiation] wither 2 1 true
effect give @s[tag=crazy_adventure.state.cave_helmet] night_vision 5 1 true
title @s[tag=crazy_adventure.state.geiger_counter] actionbar [{"translate":"Body Radiation : ","italic":false,"color":"aqua"},{"score":{"name":"@s","objective":"crazy_adventure.radiation"},"italic":false,"color":"yellow"},{"text":"/"},{"score":{"name":"@s","objective":"crazy_adventure.stockable_radiation"},"italic":false,"color":"yellow"},{"translate":" Bq"}]
execute if data entity @s SelectedItem.tag.crazy_adventure.upgrades.haste run effect give @s haste 2 0 true

#Radiation system
execute if data entity @s Inventory[{Slot:-106b}].tag.crazy_adventure.anti_radiation_glove run scoreboard players add @s crazy_adventure.offhand 1
execute if score @s crazy_adventure.offhand matches 6 run item modify entity @s weapon.offhand crazy_adventure:glove
execute if score @s crazy_adventure.offhand matches 6 run scoreboard players set @s crazy_adventure.offhand 0
execute if score @s crazy_adventure.radiation >= @s crazy_adventure.stockable_radiation run scoreboard players operation @s crazy_adventure.radiation = @s crazy_adventure.stockable_radiation

#Playsound remove
tag @s remove crazy_adventure.ps.empty_generator
tag @s remove crazy_adventure.ps.empty_consumer

