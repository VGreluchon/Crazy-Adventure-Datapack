
execute if score @s energy.storage < @s energy.max_storage run function energy_datapack_template:work/empty_generator
#Update gui depends on BurnTime
	data modify block ~ ~ ~ Items insert -1 value {Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2013102,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute unless data block ~ ~ ~ {BurnTime:0s} run data modify block ~ ~ ~ Items[1] set value {Slot:1b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:2013103,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}

#Update model depends on BurnTime (on/off)
	execute if data block ~ ~ ~ {BurnTime:0s} run data modify entity @s Item.tag.CustomModelData set value XXX0300
	execute unless data block ~ ~ ~ {BurnTime:0s} run data modify entity @s Item.tag.CustomModelData set value XXX0301

#Small Fix by the way
	data modify block ~ ~ ~ CookTimeTotal set value -200s
	data modify block ~ ~ ~ CookTime set value 0s
