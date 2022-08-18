
execute if score @s energy.storage <= @s energy.max_storage if score @s energy.storage matches 100.. run function crazy_adventure:work/oxidizer/main

execute if block ~ ~ ~ barrel[open=true] run function crazy_adventure:visual/oxidizer_2

data modify storage crazy_adventure:main Items set from block ~ ~ ~ Items 

#Update model depends on Copper status
	execute if data storage crazy_adventure:main Items[{Slot:13b,id:"minecraft:copper_block"}] run data modify entity @s Item.tag.CustomModelData set value 4220412
	execute if data storage crazy_adventure:main Items[{Slot:13b,id:"minecraft:exposed_copper"}] run data modify entity @s Item.tag.CustomModelData set value 4220413
	execute if data storage crazy_adventure:main Items[{Slot:13b,id:"minecraft:weathered_copper"}] run data modify entity @s Item.tag.CustomModelData set value 4220414
	execute unless data storage crazy_adventure:main Items[{Slot:11b,id:"minecraft:air"}] unless data storage crazy_adventure:main Items[{Slot:13b,id:"minecraft:copper_block"}] unless data storage crazy_adventure:main Items[{Slot:13b,id:"minecraft:exposed_copper"}] unless data storage crazy_adventure:main Items[{Slot:15b,id:"minecraft:oxidized_copper"}] unless data storage crazy_adventure:main Items[{Slot:13b,id:"minecraft:weathered_copper"}] run data modify entity @s Item.tag.CustomModelData set value 4220411
	execute unless data storage crazy_adventure:main Items[{Slot:11b,id:"minecraft:air"}] unless data storage crazy_adventure:main Items[{Slot:13b,id:"minecraft:copper_block"}] unless data storage crazy_adventure:main Items[{Slot:13b,id:"minecraft:exposed_copper"}] if data storage crazy_adventure:main Items[{Slot:15b,id:"minecraft:oxidized_copper"}] run data modify entity @s Item.tag.CustomModelData set value 4220415
