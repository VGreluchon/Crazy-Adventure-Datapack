data modify storage crazy_adventure:main Items set from block ~ ~ ~ Items 

function crazy_adventure:work/oxidizer/drop_gui

#Update gui depends on BurnTime
	data modify block ~ ~ ~ Items insert -1 value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221270,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.working matches 0 run data modify block ~ ~ ~ Items[{Slot:26b}] set value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221270,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.working matches 1 run data modify block ~ ~ ~ Items[{Slot:26b}] set value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221271,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.working matches 2 run data modify block ~ ~ ~ Items[{Slot:26b}] set value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221272,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.working matches 3 run data modify block ~ ~ ~ Items[{Slot:26b}] set value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221273,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.working matches 4 run data modify block ~ ~ ~ Items[{Slot:26b}] set value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221274,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.working matches 5 run data modify block ~ ~ ~ Items[{Slot:26b}] set value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221275,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.working matches 6 run data modify block ~ ~ ~ Items[{Slot:26b}] set value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221276,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.working matches 7 run data modify block ~ ~ ~ Items[{Slot:26b}] set value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221277,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.working matches 8 run data modify block ~ ~ ~ Items[{Slot:26b}] set value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221278,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.working matches 9 run data modify block ~ ~ ~ Items[{Slot:26b}] set value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221279,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.working matches 10 run data modify block ~ ~ ~ Items[{Slot:26b}] set value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221280,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.working matches 11 run data modify block ~ ~ ~ Items[{Slot:26b}] set value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221281,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.working matches 12 run data modify block ~ ~ ~ Items[{Slot:26b}] set value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221282,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.working matches 13 run data modify block ~ ~ ~ Items[{Slot:26b}] set value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221283,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}

#Update model depends on BurnTime (on/off)
	execute if score @s crazy_adventure.working matches 0 run data modify entity @s Item.tag.CustomModelData set value 4220411
	execute if score @s crazy_adventure.working matches 1..5 run data modify entity @s Item.tag.CustomModelData set value 4220412
	execute if score @s crazy_adventure.working matches 6..9 run data modify entity @s Item.tag.CustomModelData set value 4220413
	execute if score @s crazy_adventure.working matches 10..12 run data modify entity @s Item.tag.CustomModelData set value 4220414
	execute if score @s crazy_adventure.working matches 13 run data modify entity @s Item.tag.CustomModelData set value 4220415
