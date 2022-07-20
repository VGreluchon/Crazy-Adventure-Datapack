
##Check upgrades
#SOre Finder
scoreboard players set #ore_finder crazy_adventure.data 0
execute store success score #ore_finder crazy_adventure.data if data storage crazy_adventure:main Item.tag.crazy_adventure.upgrades.ore_finder
#More Radioactivity
scoreboard players set #more_radioactive crazy_adventure.data 0
execute store success score #more_radioactive crazy_adventure.data if data storage crazy_adventure:main Item.tag.crazy_adventure.upgrades.more_radioactive
#Haste
scoreboard players set #haste crazy_adventure.data 0
execute store success score #haste crazy_adventure.data if data storage crazy_adventure:main Item.tag.crazy_adventure.upgrades.haste


##Decode upgrades
scoreboard players set #success crazy_adventure.data 0
#Second Life
	execute if score #ore_finder crazy_adventure.data matches 0 if score #slot crazy_adventure.data matches 6 run data modify block ~ ~ ~ Items[{Slot:19b}].tag.display.Lore prepend value '{"color":"gray","italic":false,"translate": "Ore Finder I"}'
	execute if score #ore_finder crazy_adventure.data matches 0 store success score #success crazy_adventure.data if score #slot crazy_adventure.data matches 6 run data modify block ~ ~ ~ Items[{Slot:19b}].tag.crazy_adventure.upgrades.ore_finder set value 1b
	execute if score #ore_finder crazy_adventure.data matches 0 run item replace block ~ ~ ~ container.6 with cobblestone{CustomModelData:4221255,simplenergy:{texture_item:1b},display:{Name:'[{"text":"Obtain Ore Finder 0/1","italic":false,"color":"gold"}]'}}
	execute if score #ore_finder crazy_adventure.data matches 1 run item replace block ~ ~ ~ container.6 with cobblestone{CustomModelData:4221256,simplenergy:{texture_item:1b},display:{Name:'[{"text":"Ore Finder 1/1","italic":false,"color":"green"}]'}}
#More radioactive
	execute if score #more_radioactive crazy_adventure.data matches 0 if score #slot crazy_adventure.data matches 15 run data modify block ~ ~ ~ Items[{Slot:19b}].tag.display.Lore prepend value '{"color":"gray","italic":false,"translate": "Radioactivity I"}'
	execute if score #more_radioactive crazy_adventure.data matches 0 store success score #success crazy_adventure.data if score #slot crazy_adventure.data matches 15 run data modify block ~ ~ ~ Items[{Slot:19b}].tag.crazy_adventure.upgrades.more_radioactive set value 1b
	execute if score #more_radioactive crazy_adventure.data matches 0 run item replace block ~ ~ ~ container.15 with cobblestone{CustomModelData:4221252,simplenergy:{texture_item:1b},display:{Name:'[{"text":"Generate More Radioactivity 0/1","italic":false,"color":"gold"}]'}}
	execute if score #more_radioactive crazy_adventure.data matches 1 run item replace block ~ ~ ~ container.15 with cobblestone{CustomModelData:4221253,simplenergy:{texture_item:1b},display:{Name:'[{"text":"More Radioactivity 1/1","italic":false,"color":"green"}]'}}
#Haste
	execute if score #haste crazy_adventure.data matches 0 if score #slot crazy_adventure.data matches 24 run data modify block ~ ~ ~ Items[{Slot:19b}].tag.display.Lore prepend value '{"color":"gray","italic":false,"translate": "Haste I"}'
	execute if score #haste crazy_adventure.data matches 0 store success score #success crazy_adventure.data if score #slot crazy_adventure.data matches 24 run data modify block ~ ~ ~ Items[{Slot:19b}].tag.crazy_adventure.upgrades.haste set value 1b
	execute if score #haste crazy_adventure.data matches 0 run item replace block ~ ~ ~ container.24 with cobblestone{CustomModelData:4221243,simplenergy:{texture_item:1b},display:{Name:'[{"text":"Gain Haste 0/1","italic":false,"color":"gold"}]'}}
	execute if score #haste crazy_adventure.data matches 1 run item replace block ~ ~ ~ container.24 with cobblestone{CustomModelData:4221244,simplenergy:{texture_item:1b},display:{Name:'[{"text":"Haste 1/1","italic":false,"color":"green"}]'}}

execute if score #success crazy_adventure.data matches 1 run particle enchant ~ ~1 ~ 0.2 0.2 0.2 1 100
execute if score #success crazy_adventure.data matches 1 store result block ~ ~ ~ Items[{Slot:20b}].Count byte -0.999 run data get storage crazy_adventure:main Items[{Slot:20b}].Count -1
execute if score #success crazy_adventure.data matches 1 run playsound block.enchantment_table.use block @a[distance=..10] 
execute if score #success crazy_adventure.data matches 1 run scoreboard players remove @s energy.storage 2000


