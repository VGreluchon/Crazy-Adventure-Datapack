
execute unless data storage crazy_adventure:main Items[{Slot:6b,tag:{simplenergy:{texture_item:1b}}}] run scoreboard players set #slot crazy_adventure.data 6
execute unless data storage crazy_adventure:main Items[{Slot:15b,tag:{simplenergy:{texture_item:1b}}}] run scoreboard players set #slot crazy_adventure.data 15
execute unless data storage crazy_adventure:main Items[{Slot:24b,tag:{simplenergy:{texture_item:1b}}}] run scoreboard players set #slot crazy_adventure.data 24
data remove block ~ ~ ~ Items[{tag:{simplenergy:{texture_item:1b}}}]

item replace block ~ ~ ~ container.6 with minecraft:cobblestone{CustomModelData:2011929,simplenergy:{texture_item:1b},display:{Name:'""'}}
item replace block ~ ~ ~ container.15 with minecraft:cobblestone{CustomModelData:2011929,simplenergy:{texture_item:1b},display:{Name:'""'}}
item replace block ~ ~ ~ container.24 with minecraft:cobblestone{CustomModelData:2011929,simplenergy:{texture_item:1b},display:{Name:'""'}}

data modify block ~ ~ ~ Items insert -1 value {Slot:26b,id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:4221233,simplenergy:{texture_item:1b},display:{Name:'[{"text":""}]'}}}
