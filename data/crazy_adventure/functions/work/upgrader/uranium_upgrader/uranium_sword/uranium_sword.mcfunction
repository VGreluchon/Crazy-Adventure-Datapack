
##Check upgrades
#Attack Damage
scoreboard players set #success crazy_adventure.data 0
scoreboard players set #attack_damage crazy_adventure.data 0
execute if score #success crazy_adventure.data matches 0 store success score #success crazy_adventure.data if data storage crazy_adventure:main Item.tag.AttributeModifiers[{Name:"generic.attack_damage",Amount:8.0d}] run scoreboard players set #attack_damage crazy_adventure.data 1
execute if score #success crazy_adventure.data matches 0 store success score #success crazy_adventure.data if data storage crazy_adventure:main Item.tag.AttributeModifiers[{Name:"generic.attack_damage",Amount:9.0d}] run scoreboard players set #attack_damage crazy_adventure.data 2
execute if score #success crazy_adventure.data matches 0 store success score #success crazy_adventure.data if data storage crazy_adventure:main Item.tag.AttributeModifiers[{Name:"generic.attack_damage",Amount:10.0d}] run scoreboard players set #attack_damage crazy_adventure.data 3
#Attack Speed
scoreboard players set #success crazy_adventure.data 0
scoreboard players set #attack_speed crazy_adventure.data 0
execute if score #success crazy_adventure.data matches 0 store success score #success crazy_adventure.data if data storage crazy_adventure:main Item.tag.AttributeModifiers[{Name:"generic.attack_speed",Amount:-2.2d}] run scoreboard players set #attack_speed crazy_adventure.data 1
execute if score #success crazy_adventure.data matches 0 store success score #success crazy_adventure.data if data storage crazy_adventure:main Item.tag.AttributeModifiers[{Name:"generic.attack_speed",Amount:-2.1d}] run scoreboard players set #attack_speed crazy_adventure.data 2
execute if score #success crazy_adventure.data matches 0 store success score #success crazy_adventure.data if data storage crazy_adventure:main Item.tag.AttributeModifiers[{Name:"generic.attack_speed",Amount:-1.9d}] run scoreboard players set #attack_speed crazy_adventure.data 3
#Life Steal
scoreboard players set #life_steal crazy_adventure.data 0
execute store success score #life_steal crazy_adventure.data if data storage crazy_adventure:main Item.tag.crazy_adventure.upgrades.life_steal


##Decode upgrades
scoreboard players set #success crazy_adventure.data 0
#Attack Damage
	execute if score #attack_damage crazy_adventure.data matches 1 store success score #success crazy_adventure.data if score #slot crazy_adventure.data matches 6 run data modify block ~ ~ ~ Items[{Slot:19b}].tag.AttributeModifiers[{Name:"generic.attack_damage"}].Amount set value 9.0d
	execute if score #attack_damage crazy_adventure.data matches 1 run item replace block ~ ~ ~ container.6 with cobblestone{CustomModelData:4221237,simplenergy:{texture_item:1b},display:{Name:'[{"text":"Add 1 Attack Damage 0/2","italic":false,"color":"gold"}]'}}
	execute if score #attack_damage crazy_adventure.data matches 2 store success score #success crazy_adventure.data if score #slot crazy_adventure.data matches 6 run data modify block ~ ~ ~ Items[{Slot:19b}].tag.AttributeModifiers[{Name:"generic.attack_damage"}].Amount set value 10.0d
	execute if score #attack_damage crazy_adventure.data matches 2 run item replace block ~ ~ ~ container.6 with cobblestone{CustomModelData:4221237,simplenergy:{texture_item:1b},display:{Name:'[{"text":"Add 1 Attack Damage 1/2","italic":false,"color":"gold"}]'}}
	execute if score #attack_damage crazy_adventure.data matches 3 run item replace block ~ ~ ~ container.6 with cobblestone{CustomModelData:4221238,simplenergy:{texture_item:1b},display:{Name:'[{"text":"Attack Damage 2/2","italic":false,"color":"green"}]'}}
#Attack Speed
	execute if score #attack_speed crazy_adventure.data matches 1 store success score #success crazy_adventure.data if score #slot crazy_adventure.data matches 15 run data modify block ~ ~ ~ Items[{Slot:19b}].tag.AttributeModifiers[{Name:"generic.attack_speed"}].Amount set value -2.1d
	execute if score #attack_speed crazy_adventure.data matches 1 run item replace block ~ ~ ~ container.15 with cobblestone{CustomModelData:4221240,simplenergy:{texture_item:1b},display:{Name:'[{"text":"Gain 1 Attack Speed 0/2","italic":false,"color":"gold"}]'}}
	execute if score #attack_speed crazy_adventure.data matches 2 store success score #success crazy_adventure.data if score #slot crazy_adventure.data matches 15 run data modify block ~ ~ ~ Items[{Slot:19b}].tag.AttributeModifiers[{Name:"generic.attack_speed"}].Amount set value -1.9d
	execute if score #attack_speed crazy_adventure.data matches 2 run item replace block ~ ~ ~ container.15 with cobblestone{CustomModelData:4221240,simplenergy:{texture_item:1b},display:{Name:'[{"text":"Gain 1 Attack Speed 1/2","italic":false,"color":"gold"}]'}}
	execute if score #attack_speed crazy_adventure.data matches 3 run item replace block ~ ~ ~ container.15 with cobblestone{CustomModelData:4221241,simplenergy:{texture_item:1b},display:{Name:'[{"text":"Attack Speed 2/2","italic":false,"color":"green"}]'}}
#Life Steal
	execute if score #life_steal crazy_adventure.data matches 0 if score #slot crazy_adventure.data matches 24 run data modify block ~ ~ ~ Items[{Slot:19b}].tag.display.Lore prepend value '{"color":"gray","italic":false,"translate": "Life Steal I"}'
	execute if score #life_steal crazy_adventure.data matches 0 store success score #success crazy_adventure.data if score #slot crazy_adventure.data matches 24 run data modify block ~ ~ ~ Items[{Slot:19b}].tag.crazy_adventure.upgrades.life_steal set value 1b
	execute if score #life_steal crazy_adventure.data matches 0 run item replace block ~ ~ ~ container.24 with cobblestone{CustomModelData:4221249,simplenergy:{texture_item:1b},display:{Name:'[{"text":"Gain Life Steal 0/1","italic":false,"color":"gold"}]'}}
	execute if score #life_steal crazy_adventure.data matches 1 run item replace block ~ ~ ~ container.24 with cobblestone{CustomModelData:4221250,simplenergy:{texture_item:1b},display:{Name:'[{"text":"Life Steal 1/1","italic":false,"color":"gold"}]'}}

execute if score #success crazy_adventure.data matches 1 run particle enchant ~ ~1 ~ 0.2 0.2 0.2 1 100
execute if score #success crazy_adventure.data matches 1 store result block ~ ~ ~ Items[{Slot:20b}].Count byte -0.999 run data get storage crazy_adventure:main Items[{Slot:20b}].Count -1
execute if score #success crazy_adventure.data matches 1 run playsound block.enchantment_table.use block @a[distance=..10] 
execute if score #success crazy_adventure.data matches 1 run scoreboard players remove @s energy.storage 2000


