
execute if score @s energy.storage < @s energy.max_storage run function crazy_adventure:work/nuclear_reactor/main
##Update gui depends on BurnTime
	data modify block ~ ~ ~ Items insert -1 value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2013102,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute unless data block ~ ~ ~ {BurnTime:0s} run data modify block ~ ~ ~ Items[1] set value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2013103,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}

#Update model depends on BurnTime (on/off)
	execute if score @s crazy_adventure.working matches 0 run data modify entity @s Item.tag.CustomModelData set value 4220300
	execute unless score @s crazy_adventure.working matches 0 run data modify entity @s Item.tag.CustomModelData set value 4220301
