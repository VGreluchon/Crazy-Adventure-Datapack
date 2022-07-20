
##Check upgrades
#Health
scoreboard players set #success crazy_adventure.data 0
scoreboard players set #health crazy_adventure.data 0
execute if score #success crazy_adventure.data matches 0 store success score #success crazy_adventure.data unless data storage crazy_adventure:main Item.tag.AttributeModifiers[{Name:"generic.max_health"}] run scoreboard players set #health crazy_adventure.data 1
execute if score #success crazy_adventure.data matches 0 store success score #success crazy_adventure.data if data storage crazy_adventure:main Item.tag.AttributeModifiers[{Name:"generic.max_health",Amount:1.0d}] run scoreboard players set #health crazy_adventure.data 2
execute if score #success crazy_adventure.data matches 0 store success score #success crazy_adventure.data if data storage crazy_adventure:main Item.tag.AttributeModifiers[{Name:"generic.max_health",Amount:2.0d}] run scoreboard players set #health crazy_adventure.data 3
#Armor
scoreboard players set #success crazy_adventure.data 0
scoreboard players set #armor crazy_adventure.data 0
execute if score #success crazy_adventure.data matches 0 store success score #success crazy_adventure.data if data storage crazy_adventure:main Item.tag.AttributeModifiers[{Name:"generic.armor",Amount:3.0d}] run scoreboard players set #armor crazy_adventure.data 1
execute if score #success crazy_adventure.data matches 0 store success score #success crazy_adventure.data if data storage crazy_adventure:main Item.tag.AttributeModifiers[{Name:"generic.armor",Amount:4.0d}] run scoreboard players set #armor crazy_adventure.data 2
execute if score #success crazy_adventure.data matches 0 store success score #success crazy_adventure.data if data storage crazy_adventure:main Item.tag.AttributeModifiers[{Name:"generic.armor",Amount:5.0d}] run scoreboard players set #armor crazy_adventure.data 3
#Speed
scoreboard players set #success crazy_adventure.data 0
scoreboard players set #speed crazy_adventure.data 0
execute if score #success crazy_adventure.data matches 0 store success score #success crazy_adventure.data unless data storage crazy_adventure:main Item.tag.AttributeModifiers[{Name:"generic.movement_speed"}] run scoreboard players set #speed crazy_adventure.data 1
execute if score #success crazy_adventure.data matches 0 store success score #success crazy_adventure.data if data storage crazy_adventure:main Item.tag.AttributeModifiers[{Name:"generic.movement_speed"}] run scoreboard players set #speed crazy_adventure.data 2


##Decode upgrades
scoreboard players set #success crazy_adventure.data 0
#Attack Damage
	execute if score #health crazy_adventure.data matches 1 store success score #success crazy_adventure.data if score #slot crazy_adventure.data matches 6 run data modify block ~ ~ ~ Items[{Slot:19b}].tag.AttributeModifiers append value {AttributeName:"generic.max_health",Name:"generic.max_health",Slot:"head",Amount:1.0d,Operation:0,UUID:[I;201302,201303,201302,201302]}
	execute if score #health crazy_adventure.data matches 1 run item replace block ~ ~ ~ container.6 with cobblestone{CustomModelData:4221246,simplenergy:{texture_item:1b},display:{Name:'[{"text":"Gain 1 Health Point 0/2","italic":false,"color":"gold"}]'}}
	execute if score #health crazy_adventure.data matches 2 store success score #success crazy_adventure.data if score #slot crazy_adventure.data matches 6 run data modify block ~ ~ ~ Items[{Slot:19b}].tag.AttributeModifiers[{Name:"generic.max_health"}].Amount set value 2.0d
	execute if score #health crazy_adventure.data matches 2 run item replace block ~ ~ ~ container.6 with cobblestone{CustomModelData:4221246,simplenergy:{texture_item:1b},display:{Name:'[{"text":"Gain 1 Health Point 1/2","italic":false,"color":"gold"}]'}}
	execute if score #health crazy_adventure.data matches 3 run item replace block ~ ~ ~ container.6 with cobblestone{CustomModelData:4221247,simplenergy:{texture_item:1b},display:{Name:'[{"text":"Health Points 2/2","italic":false,"color":"green"}]'}}
#Armor
	execute if score #armor crazy_adventure.data matches 1 store success score #success crazy_adventure.data if score #slot crazy_adventure.data matches 15 run data modify block ~ ~ ~ Items[{Slot:19b}].tag.AttributeModifiers[{Name:"generic.armor"}].Amount set value 4.0d
	execute if score #armor crazy_adventure.data matches 1 run item replace block ~ ~ ~ container.15 with cobblestone{CustomModelData:4221234,simplenergy:{texture_item:1b},display:{Name:'[{"text":"Gain 1 Armor 0/2","italic":false,"color":"gold"}]'}}
	execute if score #armor crazy_adventure.data matches 2 store success score #success crazy_adventure.data if score #slot crazy_adventure.data matches 15 run data modify block ~ ~ ~ Items[{Slot:19b}].tag.AttributeModifiers[{Name:"generic.armor"}].Amount set value 5.0d
	execute if score #armor crazy_adventure.data matches 2 run item replace block ~ ~ ~ container.15 with cobblestone{CustomModelData:4221234,simplenergy:{texture_item:1b},display:{Name:'[{"text":"Gain 1 Armor 1/2","italic":false,"color":"gold"}]'}}
	execute if score #armor crazy_adventure.data matches 3 run item replace block ~ ~ ~ container.15 with cobblestone{CustomModelData:4221235,simplenergy:{texture_item:1b},display:{Name:'[{"text":"Armor 2/2","italic":false,"color":"green"}]'}}
#Speed
	execute if score #speed crazy_adventure.data matches 1 store success score #success crazy_adventure.data if score #slot crazy_adventure.data matches 24 run data modify block ~ ~ ~ Items[{Slot:19b}].tag.AttributeModifiers append value {AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Slot:"head",Amount:0.05d,Operation:1,UUID:[I;201302,201313,201302,201302]}
	execute if score #speed crazy_adventure.data matches 1 run item replace block ~ ~ ~ container.24 with cobblestone{CustomModelData:4221261,simplenergy:{texture_item:1b},display:{Name:'[{"text":"Gain 5% Speed","italic":false,"color":"gold"}]'}}
	execute if score #speed crazy_adventure.data matches 2 run item replace block ~ ~ ~ container.24 with cobblestone{CustomModelData:4221262,simplenergy:{texture_item:1b},display:{Name:'[{"text":"+5% Movement Speed","italic":false,"color":"gold"}]'}}

execute if score #success crazy_adventure.data matches 1 run particle enchant ~ ~1 ~ 0.2 0.2 0.2 1 100
execute if score #success crazy_adventure.data matches 1 store result block ~ ~ ~ Items[{Slot:20b}].Count byte -0.999 run data get storage crazy_adventure:main Items[{Slot:20b}].Count -1
execute if score #success crazy_adventure.data matches 1 run playsound block.enchantment_table.use block @a[distance=..10] 
execute if score #success crazy_adventure.data matches 1 run scoreboard players remove @s energy.storage 2000


