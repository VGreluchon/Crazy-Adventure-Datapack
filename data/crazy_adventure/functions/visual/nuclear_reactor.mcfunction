
execute if score @s energy.storage < @s energy.max_storage run function crazy_adventure:work/nuclear_reactor/main

#Update gui depends on BurnTime
	data modify block ~ ~ ~ Items insert -1 value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221100,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.working matches 0 run data modify block ~ ~ ~ Items[{Slot:26b}] set value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221100,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.working matches 1..6 run data modify block ~ ~ ~ Items[{Slot:26b}] set value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221101,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.working matches 7..12 run data modify block ~ ~ ~ Items[{Slot:26b}] set value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221102,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.working matches 13..18 run data modify block ~ ~ ~ Items[{Slot:26b}] set value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221103,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.working matches 19..24 run data modify block ~ ~ ~ Items[{Slot:26b}] set value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221104,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.working matches 25..30 run data modify block ~ ~ ~ Items[{Slot:26b}] set value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221105,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.working matches 31..36 run data modify block ~ ~ ~ Items[{Slot:26b}] set value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221106,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.working matches 37..42 run data modify block ~ ~ ~ Items[{Slot:26b}] set value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221107,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.working matches 43..48 run data modify block ~ ~ ~ Items[{Slot:26b}] set value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221108,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.working matches 49..54 run data modify block ~ ~ ~ Items[{Slot:26b}] set value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221109,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.working matches 55..60 run data modify block ~ ~ ~ Items[{Slot:26b}] set value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221110,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}

#Update gui depends on Cooling
	data modify block ~ ~ ~ Items insert -1 value {Slot:25b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221000,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.water matches 0..5 run data modify block ~ ~ ~ Items[{Slot:25b}] set value {Slot:25b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221000,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.water matches 6..15 run data modify block ~ ~ ~ Items[{Slot:25b}] set value {Slot:25b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221001,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.water matches 16..25 run data modify block ~ ~ ~ Items[{Slot:25b}] set value {Slot:25b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221002,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.water matches 26..35 run data modify block ~ ~ ~ Items[{Slot:25b}] set value {Slot:25b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221003,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.water matches 36..45 run data modify block ~ ~ ~ Items[{Slot:25b}] set value {Slot:25b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221004,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.water matches 46..56 run data modify block ~ ~ ~ Items[{Slot:25b}] set value {Slot:25b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221005,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.water matches 56..65 run data modify block ~ ~ ~ Items[{Slot:25b}] set value {Slot:25b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221006,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.water matches 66..75 run data modify block ~ ~ ~ Items[{Slot:25b}] set value {Slot:25b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221007,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.water matches 76..85 run data modify block ~ ~ ~ Items[{Slot:25b}] set value {Slot:25b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221008,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.water matches 86..95 run data modify block ~ ~ ~ Items[{Slot:25b}] set value {Slot:25b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221009,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
	execute if score @s crazy_adventure.water matches 96..100 run data modify block ~ ~ ~ Items[{Slot:25b}] set value {Slot:25b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221010,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}

#Update model depends on BurnTime (on/off)
	execute if score @s crazy_adventure.working matches 0 run data modify entity @s Item.tag.CustomModelData set value 4220300
	execute unless score @s crazy_adventure.working matches 0 run data modify entity @s Item.tag.CustomModelData set value 4220301

