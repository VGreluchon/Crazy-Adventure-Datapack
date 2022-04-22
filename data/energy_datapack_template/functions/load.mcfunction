
##Called by function tag #load:load

# Define scoreboard objectives
scoreboard objectives add energy_datapack_template.data dummy
scoreboard objectives add energy_datapack_template.config dummy

# Default Config
execute unless score #default_config energy_datapack_template.config matches 1 run function energy_datapack_template:config/default

# Define datapack version in this format "1.00.0" (Major.Minor.Patch)
scoreboard players set EnergyDatapackTemplate load.status 1000
scoreboard players set #second energy_datapack_template.data 10

# Define some missing constants in simplenergy.data
scoreboard players set #3 simplenergy.data 3
scoreboard players set #-10 simplenergy.data -10
scoreboard players set #-3 simplenergy.data -3


#define storage energy:temp
#define storage simplenergy:main
#define storage smithed.crafter:main
#define storage smithed.custom_block:main
#define storage energy_datapack_template:main
# Storing all items into a global storage using CustomModelData prefix
# CustomModelData convention: https://wiki.smithed.dev/conventions/cmd-prefixing
# You should own a prefix 'XXX'

#Resources
	#Template Ore
		data modify storage energy_datapack_template:main all.XXX0000 set value {Slot:16b,id:"minecraft:barrel"						,Count:1b,tag:{ctc:{id:"template_ore",from:"your_name:energy_datapack_template",traits:{"metal/template":1b,"block":1b,"ore":1b}}		,CustomModelData:XXX0000,energy_datapack_template:{template_ore:1b}					,display:{Lore:['{"translate":"Energy Datapack Template","color":"blue","italic":true}'],Name:'[{"text":"Template Ore","italic":false,"color":"white"}]'}		,BlockEntityTag:{Items:[{id:"minecraft:stone",Count:1b,Slot:0b,tag:{smithed:{block:{from:"energy_datapack_template",id:"energy_datapack_template:template_ore"}}}}]}}}
	#Template Ingot
		data modify storage energy_datapack_template:main all.XXX0001 set value {Slot:16b,id:"minecraft:command_block"				,Count:1b,tag:{ctc:{id:"template_ingot",from:"your_name:energy_datapack_template",traits:{"metal/template":1b,"ingot":1b}}				,CustomModelData:XXX0001,energy_datapack_template:{template_ingot:1b}				,display:{Lore:['{"translate":"Energy Datapack Template","color":"blue","italic":true}'],Name:'[{"text":"Template Ingot","italic":false,"color":"white"}]'}}}
	#Template Block
		data modify storage energy_datapack_template:main all.XXX0002 set value {Slot:16b,id:"minecraft:barrel"						,Count:1b,tag:{ctc:{id:"template_block",from:"your_name:energy_datapack_template",traits:{"metal/template":1b,"block":1b}}				,CustomModelData:XXX0002,energy_datapack_template:{template_block:1b}				,display:{Lore:['{"translate":"Energy Datapack Template","color":"blue","italic":true}'],Name:'[{"text":"Template Block","italic":false,"color":"white"}]'}	,BlockEntityTag:{Items:[{id:"minecraft:stone",Count:1b,Slot:0b,tag:{smithed:{block:{from:"energy_datapack_template",id:"energy_datapack_template:template_block"}}}}]}}}
	#Raw Template
		data modify storage energy_datapack_template:main all.XXX0003 set value {Slot:16b,id:"minecraft:command_block"				,Count:1b,tag:{ctc:{id:"raw_template",from:"your_name:energy_datapack_template",traits:{"metal/template":1b,"ore":1b}}					,CustomModelData:XXX0003,energy_datapack_template:{raw_template:1b}					,display:{Lore:['{"translate":"Energy Datapack Template","color":"blue","italic":true}'],Name:'[{"text":"Raw Template","italic":false,"color":"white"}]'}}}

#Tools/Equipments
	#Template Armor/Tools
		data modify storage energy_datapack_template:main all.XXX0100 set value {Slot:16b,id:"minecraft:leather_helmet"				,Count:1b,tag:{ctc:{id:"template_helmet",from:"your_name:energy_datapack_template",traits:{"armor":1b}}									,CustomModelData:XXX0100,energy_datapack_template:{template_helmet:1b}				,HideFlags:64,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"head",Amount:4,Operation:0,UUID:[I;201302,201302,201302,201303]}	,{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Slot:"head",Amount:2,Operation:0,UUID:[I;201302,201302,201303,201303]}]						,display:{color:3487029,Lore:['{"translate":"Energy Datapack Template","color":"blue","italic":true}']	,Name:'[{"text":"Template Helmet","italic":false,"color":"white"}]'}}}
		data modify storage energy_datapack_template:main all.XXX0101 set value {Slot:16b,id:"minecraft:leather_chestplate"			,Count:1b,tag:{ctc:{id:"template_chestplate",from:"your_name:energy_datapack_template",traits:{"armor":1b}}								,CustomModelData:XXX0101,energy_datapack_template:{template_chestplate:1b}			,HideFlags:64,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"chest",Amount:9,Operation:0,UUID:[I;201302,201302,201302,201303]}	,{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Slot:"chest",Amount:2,Operation:0,UUID:[I;201302,201302,201303,201303]}]						,display:{color:3487029,Lore:['{"translate":"Energy Datapack Template","color":"blue","italic":true}']	,Name:'[{"text":"Template Chestplate","italic":false,"color":"white"}]'}}}
		data modify storage energy_datapack_template:main all.XXX0102 set value {Slot:16b,id:"minecraft:leather_leggings"			,Count:1b,tag:{ctc:{id:"template_leggings",from:"your_name:energy_datapack_template",traits:{"armor":1b}}								,CustomModelData:XXX0102,energy_datapack_template:{template_leggings:1b}			,HideFlags:64,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"legs",Amount:7,Operation:0,UUID:[I;201303,201303,201303,201304]}	,{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Slot:"legs",Amount:2,Operation:0,UUID:[I;201303,201303,201304,201304]}]						,display:{color:3487029,Lore:['{"translate":"Energy Datapack Template","color":"blue","italic":true}']	,Name:'[{"text":"Template Leggings","italic":false,"color":"white"}]'}}}
		data modify storage energy_datapack_template:main all.XXX0103 set value {Slot:16b,id:"minecraft:leather_boots"				,Count:1b,tag:{ctc:{id:"template_boots",from:"your_name:energy_datapack_template",traits:{"armor":1b}}									,CustomModelData:XXX0103,energy_datapack_template:{template_boots:1b}				,HideFlags:64,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"feet",Amount:4,Operation:0,UUID:[I;201304,201304,201304,201305]}	,{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Slot:"feet",Amount:8,Operation:0,UUID:[I;201304,201304,201305,201305]}]						,display:{color:3487029,Lore:['{"translate":"Energy Datapack Template","color":"blue","italic":true}']	,Name:'[{"text":"Template Boots","italic":false,"color":"white"}]'}}}
		data modify storage energy_datapack_template:main all.XXX0104 set value {Slot:16b,id:"minecraft:diamond_sword"				,Count:1b,tag:{ctc:{id:"template_sword",from:"your_name:energy_datapack_template",traits:{"tool/weapon":1b}}							,CustomModelData:XXX0104,energy_datapack_template:{template_sword:1b}							 ,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:8,Operation:0,UUID:[I;201305,201305,201305,201305]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-2.25,Operation:0,UUID:[I;201305,201305,201305,201306]}]		,display:{Lore:['{"translate":"Energy Datapack Template","color":"blue","italic":true}']				,Name:'[{"text":"Template Sword","italic":false,"color":"white"}]'}}}
		data modify storage energy_datapack_template:main all.XXX0105 set value {Slot:16b,id:"minecraft:diamond_pickaxe"			,Count:1b,tag:{ctc:{id:"template_pickaxe",from:"your_name:energy_datapack_template",traits:{"tool/mining":1b}}							,CustomModelData:XXX0105,energy_datapack_template:{template_pickaxe:1b}				,display:{Lore:['{"translate":"Energy Datapack Template","color":"blue","italic":true}'],Name:'[{"text":"Template Pickaxe","italic":false,"color":"white"}]'}}}
		data modify storage energy_datapack_template:main all.XXX0106 set value {Slot:16b,id:"minecraft:diamond_axe"				,Count:1b,tag:{ctc:{id:"template_axe",from:"your_name:energy_datapack_template",traits:{"tool/chopping":1b}}							,CustomModelData:XXX0106,energy_datapack_template:{template_axe:1b}					,display:{Lore:['{"translate":"Energy Datapack Template","color":"blue","italic":true}'],Name:'[{"text":"Template Axe","italic":false,"color":"white"}]'}}}
		data modify storage energy_datapack_template:main all.XXX0107 set value {Slot:16b,id:"minecraft:diamond_hoe"				,Count:1b,tag:{ctc:{id:"template_hoe",from:"your_name:energy_datapack_template",traits:{"tool/tilling":1b}}								,CustomModelData:XXX0107,energy_datapack_template:{template_hoe:1b}					,display:{Lore:['{"translate":"Energy Datapack Template","color":"blue","italic":true}'],Name:'[{"text":"Template Hoe","italic":false,"color":"white"}]'}}}
		data modify storage energy_datapack_template:main all.XXX0108 set value {Slot:16b,id:"minecraft:diamond_shovel"				,Count:1b,tag:{ctc:{id:"template_shovel",from:"your_name:energy_datapack_template",traits:{"tool/shovelling":1b}}						,CustomModelData:XXX0108,energy_datapack_template:{template_shovel:1b}				,display:{Lore:['{"translate":"Energy Datapack Template","color":"blue","italic":true}'],Name:'[{"text":"Template Shovel","italic":false,"color":"white"}]'}}}

#Energy
	#Batteries
		#Template Battery
			data modify storage energy_datapack_template:main all.XXX0200 set value {Slot:16b,id:"minecraft:barrel"					,Count:1b,tag:{ctc:{id:"template_battery",from:"your_name:energy_datapack_template",traits:{"block":1b,"energy":1b}}					,CustomModelData:XXX0200,energy_datapack_template:{template_battery:1b}				,energy:{storage:0,max_storage:10000},display:{Lore:['[{"text":"[Energy Storage: 10 MJ]","italic":false,"color":"gray"}]','{"translate":"Energy Datapack Template","color":"blue","italic":true}'],Name:'[{"text":"Template Battery","italic":false,"color":"white"}]'}										,BlockEntityTag:{Items:[{id:"minecraft:stone",Count:1b,Slot:0b,tag:{smithed:{block:{from:"energy_datapack_template",id:"energy_datapack_template:template_battery"}}}}]}}}
	#Generators
		#Empty Generator (Generate energy from nothing)
			data modify storage energy_datapack_template:main all.XXX0300 set value {Slot:16b,id:"minecraft:barrel"					,Count:1b,tag:{ctc:{id:"empty_generator",from:"your_name:energy_datapack_template",traits:{"block":1b,"energy":1b}}						,CustomModelData:XXX0300,energy_datapack_template:{empty_generator:1b}				,display:{Lore:['[{"text":"[Generate: 50 kW]","italic":false,"color":"gray"}]','[{"text":"[Energy Buffer: 500 kJ]","italic":false,"color":"gray"}]','{"translate":"Energy Datapack Template","color":"blue","italic":true}'],Name:'[{"text":"Empty Generator","italic":false,"color":"white"}]'}			,BlockEntityTag:{Items:[{id:"minecraft:stone",Count:1b,Slot:0b,tag:{smithed:{block:{from:"energy_datapack_template",id:"energy_datapack_template:empty_generator"}}}}]}}}
	#Consumers
		#Empty Consumer (Consume energy with nothing)
			data modify storage energy_datapack_template:main all.XXX0400 set value {Slot:16b,id:"minecraft:barrel"					,Count:1b,tag:{ctc:{id:"empty_consumer",from:"your_name:energy_datapack_template",traits:{"block":1b,"energy":1b}}						,CustomModelData:XXX0400,energy_datapack_template:{empty_consumer:1b}				,display:{Lore:['[{"text":"[Power Usage: 50 kW]","italic":false,"color":"gray"}]','[{"text":"[Energy Buffer: 500 kJ]","italic":false,"color":"gray"}]','{"translate":"Energy Datapack Template","color":"blue","italic":true}'],Name:'[{"text":"Empty Consumer","italic":false,"color":"white"}]'}			,BlockEntityTag:{Items:[{id:"minecraft:stone",Count:1b,Slot:0b,tag:{smithed:{block:{from:"energy_datapack_template",id:"energy_datapack_template:empty_consumer"}}}}]}}}



