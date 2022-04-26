

#Update gui charges
	data modify block ~ ~ ~ Items insert -1 value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221200,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.charges matches 0 run data modify block ~ ~ ~ Items[{Slot:26b}] set value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221200,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.charges matches 1 run data modify block ~ ~ ~ Items[{Slot:26b}] set value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221201,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.charges matches 2 run data modify block ~ ~ ~ Items[{Slot:26b}] set value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221202,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.charges matches 3 run data modify block ~ ~ ~ Items[{Slot:26b}] set value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221203,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.charges matches 4 run data modify block ~ ~ ~ Items[{Slot:26b}] set value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221204,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.charges matches 5 run data modify block ~ ~ ~ Items[{Slot:26b}] set value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221205,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.charges matches 6 run data modify block ~ ~ ~ Items[{Slot:26b}] set value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221206,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.charges matches 7 run data modify block ~ ~ ~ Items[{Slot:26b}] set value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221207,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.charges matches 8 run data modify block ~ ~ ~ Items[{Slot:26b}] set value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221208,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.charges matches 9 run data modify block ~ ~ ~ Items[{Slot:26b}] set value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221209,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.charges matches 10 run data modify block ~ ~ ~ Items[{Slot:26b}] set value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221210,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
