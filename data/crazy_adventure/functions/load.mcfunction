
##Called by function tag #load:load

# Define scoreboard objectives
scoreboard objectives add crazy_adventure.data dummy
scoreboard objectives add crazy_adventure.config dummy
scoreboard objectives add crazy_adventure.id dummy
scoreboard objectives add crazy_adventure.working dummy
scoreboard objectives add crazy_adventure.water dummy

# Default Config
execute unless score #default_config crazy_adventure.config matches 1 run function crazy_adventure:config/default

# Define datapack version in this format "1.00.0" (Major.Minor.Patch)
scoreboard players set CrazyAdventure load.status 1000
scoreboard players set #second crazy_adventure.data 10

# Define some missing constants in simplenergy.data
scoreboard players set #3 simplenergy.data 3
scoreboard players set #-10 simplenergy.data -10
scoreboard players set #-3 simplenergy.data -3


#define storage energy:temp
#define storage simplenergy:main
#define storage smithed.crafter:main
#define storage smithed.custom_block:main
#define storage crazy_adventure:main
# Storing all items into a global storage using CustomModelData prefix
# CustomModelData convention: https://wiki.smithed.dev/conventions/cmd-prefixing
# You should own a prefix '422'

#Resources
	#URANIUM Ore
		data modify storage crazy_adventure:main all.4220004 set value {Slot:16b,id:"minecraft:barrel"						,Count:1b,tag:{ctc:{id:"uranium_ore",from:"vgreluchon:crazy_adventure",traits:{"metal/template":1b,"block":1b,"ore":1b}}		,CustomModelData:4220004,crazy_adventure:{uranium_ore:1b}					,display:{Lore:['{"translate":"Crazy Adventure","color":"blue","italic":true}'],Name:'[{"text":"Uranium Ore","italic":false,"color":"white"}]'}			,BlockEntityTag:{Items:[{id:"minecraft:stone",Count:1b,Slot:0b,tag:{smithed:{block:{from:"crazy_adventure",id:"crazy_adventure:uranium_ore"}}}}]}}}
	#URANIUM Ingot
		data modify storage crazy_adventure:main all.4220005 set value {Slot:16b,id:"minecraft:command_block"				,Count:1b,tag:{ctc:{id:"uranium_ingot",from:"vgreluchon:crazy_adventure",traits:{"metal/template":1b,"ingot":1b}}				,CustomModelData:4220005,crazy_adventure:{uranium_ingot:1b}					,display:{Lore:['{"translate":"Crazy Adventure","color":"blue","italic":true}'],Name:'[{"text":"Uranium Ingot","italic":false,"color":"white"}]'}}}
	#URANIUM Block
		data modify storage crazy_adventure:main all.4220006 set value {Slot:16b,id:"minecraft:barrel"						,Count:1b,tag:{ctc:{id:"uranium_block",from:"vgreluchon:crazy_adventure",traits:{"metal/template":1b,"block":1b}}				,CustomModelData:4220006,crazy_adventure:{uranium_block:1b}					,display:{Lore:['{"translate":"Crazy Adventure","color":"blue","italic":true}'],Name:'[{"text":"Uranium Block","italic":false,"color":"white"}]'}		,BlockEntityTag:{Items:[{id:"minecraft:stone",Count:1b,Slot:0b,tag:{smithed:{block:{from:"crazy_adventure",id:"crazy_adventure:uranium_block"}}}}]}}}
	#Raw URANIUM
		data modify storage crazy_adventure:main all.4220007 set value {Slot:16b,id:"minecraft:command_block"				,Count:1b,tag:{ctc:{id:"raw_uranium",from:"vgreluchon:crazy_adventure",traits:{"metal/template":1b,"ore":1b}}					,CustomModelData:4220007,crazy_adventure:{raw_uranium:1b}					,display:{Lore:['{"translate":"Crazy Adventure","color":"blue","italic":true}'],Name:'[{"text":"Raw Uranium","italic":false,"color":"white"}]'}}}
	#Uranium Core
		data modify storage crazy_adventure:main all.4220008 set value {Slot:16b,id:"minecraft:command_block"				,Count:1b,tag:{ctc:{id:"uranium_core",from:"vgreluchon:crazy_adventure",traits:{"metal/template":1b,"ingot":1b}}				,CustomModelData:4220008,crazy_adventure:{uranium_core:1b}					,display:{Lore:['{"translate":"Crazy Adventure","color":"blue","italic":true}'],Name:'[{"text":"Uranium Core","italic":false,"color":"white"}]'}}}
	#Radioactive Waste
		data modify storage crazy_adventure:main all.4220009 set value {Slot:16b,id:"minecraft:command_block"				,Count:1b,tag:{ctc:{id:"radioactive_waste",from:"vgreluchon:crazy_adventure",traits:{"metal/template":1b,"ingot":1b}}			,CustomModelData:4220009,crazy_adventure:{radioactive_waste:1b}				,display:{Lore:['{"translate":"Crazy Adventure","color":"blue","italic":true}'],Name:'[{"text":"Radioactive Waste","italic":false,"color":"white"}]'}}}
	#Radioactive Waste Barrel
		data modify storage crazy_adventure:main all.4220010 set value {Slot:16b,id:"minecraft:barrel"						,Count:1b,tag:{ctc:{id:"radioactive_waste_barrel",from:"vgreluchon:crazy_adventure",traits:{"metal/template":1b,"block":1b}}	,CustomModelData:4220010,crazy_adventure:{radioactive_waste_barrel:1b}		,display:{Lore:['{"translate":"Crazy Adventure","color":"blue","italic":true}'],Name:'[{"text":"Radioactive Waste Barrel","italic":false,"color":"white"}]'}	,BlockEntityTag:{Items:[{id:"minecraft:stone",Count:1b,Slot:0b,tag:{smithed:{block:{from:"crazy_adventure",id:"crazy_adventure:radioactive_waste_barrel"}}}}]}}}

#Tools/Equipments
	#Template Armor/Tools
		data modify storage crazy_adventure:main all.4220100 set value {Slot:16b,id:"minecraft:leather_helmet"				,Count:1b,tag:{ctc:{id:"template_helmet",from:"vgreluchon:crazy_adventure",traits:{"armor":1b}}									,CustomModelData:4220100,crazy_adventure:{template_helmet:1b}				,HideFlags:64,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"head",Amount:4,Operation:0,UUID:[I;201302,201302,201302,201303]}	,{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Slot:"head",Amount:2,Operation:0,UUID:[I;201302,201302,201303,201303]}]						,display:{color:3487029,Lore:['{"translate":"Crazy Adventure","color":"blue","italic":true}']	,Name:'[{"text":"Template Helmet","italic":false,"color":"white"}]'}}}
		data modify storage crazy_adventure:main all.4220101 set value {Slot:16b,id:"minecraft:leather_chestplate"			,Count:1b,tag:{ctc:{id:"template_chestplate",from:"vgreluchon:crazy_adventure",traits:{"armor":1b}}								,CustomModelData:4220101,crazy_adventure:{template_chestplate:1b}			,HideFlags:64,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"chest",Amount:9,Operation:0,UUID:[I;201302,201302,201302,201303]}	,{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Slot:"chest",Amount:2,Operation:0,UUID:[I;201302,201302,201303,201303]}]						,display:{color:3487029,Lore:['{"translate":"Crazy Adventure","color":"blue","italic":true}']	,Name:'[{"text":"Template Chestplate","italic":false,"color":"white"}]'}}}
		data modify storage crazy_adventure:main all.4220102 set value {Slot:16b,id:"minecraft:leather_leggings"			,Count:1b,tag:{ctc:{id:"template_leggings",from:"vgreluchon:crazy_adventure",traits:{"armor":1b}}								,CustomModelData:4220102,crazy_adventure:{template_leggings:1b}				,HideFlags:64,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"legs",Amount:7,Operation:0,UUID:[I;201303,201303,201303,201304]}	,{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Slot:"legs",Amount:2,Operation:0,UUID:[I;201303,201303,201304,201304]}]						,display:{color:3487029,Lore:['{"translate":"Crazy Adventure","color":"blue","italic":true}']	,Name:'[{"text":"Template Leggings","italic":false,"color":"white"}]'}}}
		data modify storage crazy_adventure:main all.4220103 set value {Slot:16b,id:"minecraft:leather_boots"				,Count:1b,tag:{ctc:{id:"template_boots",from:"vgreluchon:crazy_adventure",traits:{"armor":1b}}									,CustomModelData:4220103,crazy_adventure:{template_boots:1b}				,HideFlags:64,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"feet",Amount:4,Operation:0,UUID:[I;201304,201304,201304,201305]}	,{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Slot:"feet",Amount:8,Operation:0,UUID:[I;201304,201304,201305,201305]}]						,display:{color:3487029,Lore:['{"translate":"Crazy Adventure","color":"blue","italic":true}']	,Name:'[{"text":"Template Boots","italic":false,"color":"white"}]'}}}
		data modify storage crazy_adventure:main all.4220104 set value {Slot:16b,id:"minecraft:diamond_sword"				,Count:1b,tag:{ctc:{id:"template_sword",from:"vgreluchon:crazy_adventure",traits:{"tool/weapon":1b}}							,CustomModelData:4220104,crazy_adventure:{template_sword:1b}							 ,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:8,Operation:0,UUID:[I;201305,201305,201305,201305]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-2.25,Operation:0,UUID:[I;201305,201305,201305,201306]}]		,display:{Lore:['{"translate":"Crazy Adventure","color":"blue","italic":true}']					,Name:'[{"text":"Template Sword","italic":false,"color":"white"}]'}}}
		data modify storage crazy_adventure:main all.4220105 set value {Slot:16b,id:"minecraft:diamond_pickaxe"				,Count:1b,tag:{ctc:{id:"template_pickaxe",from:"vgreluchon:crazy_adventure",traits:{"tool/mining":1b}}							,CustomModelData:4220105,crazy_adventure:{template_pickaxe:1b}				,display:{Lore:['{"translate":"Crazy Adventure","color":"blue","italic":true}'],Name:'[{"text":"Template Pickaxe","italic":false,"color":"white"}]'}}}
		data modify storage crazy_adventure:main all.4220106 set value {Slot:16b,id:"minecraft:diamond_axe"					,Count:1b,tag:{ctc:{id:"template_axe",from:"vgreluchon:crazy_adventure",traits:{"tool/chopping":1b}}							,CustomModelData:4220106,crazy_adventure:{template_axe:1b}					,display:{Lore:['{"translate":"Crazy Adventure","color":"blue","italic":true}'],Name:'[{"text":"Template Axe","italic":false,"color":"white"}]'}}}
		data modify storage crazy_adventure:main all.4220107 set value {Slot:16b,id:"minecraft:diamond_hoe"					,Count:1b,tag:{ctc:{id:"template_hoe",from:"vgreluchon:crazy_adventure",traits:{"tool/tilling":1b}}								,CustomModelData:4220107,crazy_adventure:{template_hoe:1b}					,display:{Lore:['{"translate":"Crazy Adventure","color":"blue","italic":true}'],Name:'[{"text":"Template Hoe","italic":false,"color":"white"}]'}}}
		data modify storage crazy_adventure:main all.4220108 set value {Slot:16b,id:"minecraft:diamond_shovel"				,Count:1b,tag:{ctc:{id:"template_shovel",from:"vgreluchon:crazy_adventure",traits:{"tool/shovelling":1b}}						,CustomModelData:4220108,crazy_adventure:{template_shovel:1b}				,display:{Lore:['{"translate":"Crazy Adventure","color":"blue","italic":true}'],Name:'[{"text":"Template Shovel","italic":false,"color":"white"}]'}}}

	#Cave Helmet
		data modify storage crazy_adventure:main all.4220109 set value {Slot:16b,id:"minecraft:leather_helmet"				,Count:1b,tag:{ctc:{id:"cave_helmet",from:"vgreluchon:crazy_adventure",traits:{"armor":1b}}										,CustomModelData:4220109,crazy_adventure:{cave_helmet:1b}					,HideFlags:64,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"head",Amount:3,Operation:0,UUID:[I;201302,201302,201302,201303]}	,{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Slot:"head",Amount:2,Operation:0,UUID:[I;201302,201302,201303,201303]}]						,display:{color:6044178,Lore:['{"translate":"Crazy Adventure","color":"blue","italic":true}']	,Name:'[{"text":"Cave Helmet","italic":false,"color":"white"}]'}}}

#Energy
	#Batteries
		#Uranium Battery
			data modify storage crazy_adventure:main all.4220200 set value {Slot:16b,id:"minecraft:barrel"					,Count:1b,tag:{ctc:{id:"uranium_battery",from:"vgreluchon:crazy_adventure",traits:{"block":1b,"energy":1b}}						,CustomModelData:4220200,crazy_adventure:{uranium_battery:1b}				,energy:{storage:0,max_storage:150000},display:{Lore:['[{"text":"[Energy Storage: 150 MJ]","italic":false,"color":"gray"}]','{"translate":"Crazy Adventure","color":"blue","italic":true}'],Name:'[{"text":"Uranium Battery","italic":false,"color":"white"}]'}										,BlockEntityTag:{Items:[{id:"minecraft:stone",Count:1b,Slot:0b,tag:{smithed:{block:{from:"crazy_adventure",id:"crazy_adventure:uranium_battery"}}}}]}}}
	#Generators
		#Nuclear Reactor (Generate energy from nothing)
			data modify storage crazy_adventure:main all.4220300 set value {Slot:16b,id:"minecraft:barrel"					,Count:1b,tag:{ctc:{id:"nuclear_reactor",from:"vgreluchon:crazy_adventure",traits:{"block":1b,"energy":1b}}						,CustomModelData:4220300,crazy_adventure:{nuclear_reactor:1b}				,display:{Lore:['[{"text":"Use Uranium Ingot","italic":false,"color":"white"}]','[{"text":"Cooling Required","italic":false,"color":"white"}]','[{"text":"[Generate: 150 kW]","italic":false,"color":"gray"}]','[{"text":"[Energy Buffer: 45 MJ]","italic":false,"color":"gray"}]','{"translate":"Crazy Adventure","color":"blue","italic":true}'],Name:'[{"text":"Nuclear Reactor","italic":false,"color":"white"}]'}				,BlockEntityTag:{Items:[{id:"minecraft:stone",Count:1b,Slot:0b,tag:{smithed:{block:{from:"crazy_adventure",id:"crazy_adventure:nuclear_reactor"}}}}]}}}
	#Consumers
		#Empty Consumer (Consume energy with nothing)
			data modify storage crazy_adventure:main all.4220400 set value {Slot:16b,id:"minecraft:barrel"					,Count:1b,tag:{ctc:{id:"empty_consumer",from:"vgreluchon:crazy_adventure",traits:{"block":1b,"energy":1b}}						,CustomModelData:4220400,crazy_adventure:{empty_consumer:1b}				,display:{Lore:['[{"text":"[Power Usage: 50 kW]","italic":false,"color":"gray"}]','[{"text":"[Energy Buffer: 500 kJ]","italic":false,"color":"gray"}]','{"translate":"Crazy Adventure","color":"blue","italic":true}'],Name:'[{"text":"Empty Consumer","italic":false,"color":"white"}]'}			,BlockEntityTag:{Items:[{id:"minecraft:stone",Count:1b,Slot:0b,tag:{smithed:{block:{from:"crazy_adventure",id:"crazy_adventure:empty_consumer"}}}}]}}}



