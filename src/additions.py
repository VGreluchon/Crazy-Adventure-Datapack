
# ruff: noqa: E501
# Imports
from stewbeet import *

from stouputils.print import info

# Constants
MECHANIZATION_COMPATIBILITY: TextComponent = [
	{"text":"Mechanization Integration Item","color":"yellow"},
	{"text":"\nRequires Mechanization datapack to be installed for recipes to function properly","color":"gray"}
]


def main_additions() -> None:
	MISC: str = "miscellaneous"
	ns: str = Mem.ctx.project_id

	# Give Additional data for every item
	additions: dict[str, JsonDict] = {

		# Miscellaneous items
		"geiger_counter": {
			"id": "minecraft:command_block", CATEGORY: MISC,
			"tooltip_display": {"hidden_components": ["minecraft:unbreakable"]},
			"lore": [{"text":"Allows you to know your radiation amount","italic":False,"color":"gray"},{"text":"[Hold in offhand]","italic":False,"color":"white"}],
			RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"equipment","shape":["UU","CC","CC"],"ingredients":{"U":ingr_repr("uranium_ingot"),"C":ingr_repr("minecraft:copper_ingot")}}],
			OVERRIDE_MODEL: {"parent":"item/handheld"},
			WIKI_COMPONENT: [
				{"text":"Good to know your Tchernobyl rate.","color":"green"},
				{"text":"\nHold in your offhand to know how much radiation is there is your body.","color":"gray"},
			],
			},
		# Materials
		"uranium_core": {
			"id": "minecraft:command_block", CATEGORY: "material",
			"tooltip_display": {"hidden_components": ["minecraft:unbreakable"]},
			RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"equipment","shape":[" U ","UIU"," U "],"ingredients":{"U":ingr_repr("uranium_ingot"),"I":ingr_repr("minecraft:iron_block")}}],
			OVERRIDE_MODEL: {"parent":"item/handheld"},
			WIKI_COMPONENT: [
				{"text":"Very interesting right ?","color":"green"},
				{"text":"\nUsed to craft a lot of things","color":"gray"},
			],
		},
		"uranium_waste": {
			"id": "minecraft:command_block", CATEGORY: "material",
			"tooltip_display": {"hidden_components": ["minecraft:unbreakable"]},
			OVERRIDE_MODEL: {"parent":"item/handheld"},
			WIKI_COMPONENT: [
				{"text":"That looks tasty.","color":"green"},
				{"text":"\nObtained with nuclear reactors 1 & 2","color":"gray"},
			],
		},
		"uranium_waste_barrel": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "material",
			RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"equipment","shape":["UUU","UIU","UUU"],"ingredients":{"U":ingr_repr("uranium_waste"),"I":ingr_repr("minecraft:barrel")}}],
			WIKI_COMPONENT: [
				{"text":"Safe storage of radioactive waste.","color":"green"},
				{"text":"\nMade with Uranium Waste","color":"gray"},
			],
		},
		"uranium_shard": {
			"id": "minecraft:command_block", CATEGORY: "material",
			"tooltip_display": {"hidden_components": ["minecraft:unbreakable"]},
			OVERRIDE_MODEL: {"parent":"item/handheld"},
			WIKI_COMPONENT: [
				{"text":"Shard covered with Uranium.","color":"green"},
				{"text":"\nObtained by killing monsters summoned by the Battle Bus","color":"gray"},
			],
		},
		"uranium_book": {
			"id": "minecraft:command_block", CATEGORY: "material",
			"tooltip_display": {"hidden_components": ["minecraft:unbreakable"]},
			RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"equipment","shape":["   ","BU ","   "],"ingredients":{"U":ingr_repr("uranium_shard"),"B":ingr_repr("uranium_book")}}],
			OVERRIDE_MODEL: {"parent":"item/handheld"},
			WIKI_COMPONENT: [
				{"text":"Magic Book for Radioactive Uses","color":"green"},
				{"text":"\nUse it in Uranium Upgrader to upgrade Uranium stuff","color":"gray"},
			],
		},
		"californium_core": {
   			"id": "minecraft:command_block", CATEGORY: "material",
   			"tooltip_display": {"hidden_components": ["minecraft:unbreakable"]},
   			RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"equipment","shape":[" C ","CUC"," C "],"ingredients":{"C":ingr_repr("californium_ingot"),"U":ingr_repr("uranium_core")}}],
  			OVERRIDE_MODEL: {"parent":"item/handheld"},
  			WIKI_COMPONENT: [
        		{"text":"Extremely interesting right ?","color":"green"},
        		{"text":"\nUsed to craft a lot of things (Well, not really ATM)","color":"gray"},
    		],
		},
		"californium_waste": {
			"id": "minecraft:command_block", CATEGORY: "material",
			"tooltip_display": {"hidden_components": ["minecraft:unbreakable"]},
			OVERRIDE_MODEL: {"parent":"item/handheld"},
			WIKI_COMPONENT: [
				{"text":"That looks tasty.","color":"green"},
				{"text":"\nObtained with nuclear reactors 3 & 4","color":"gray"},
			],
		},
		"californium_waste_barrel": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "material",
			RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"equipment","shape":["UUU","UIU","UUU"],"ingredients":{"U":ingr_repr("californium_waste"),"I":ingr_repr("minecraft:barrel")}}],
			WIKI_COMPONENT: [
				{"text":"Safe storage of radioactive waste.","color":"green"},
				{"text":"\nMade with Californium Waste","color":"gray"},
			],
		},

		# Machines (Generator)
		"nuclear_reactor": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"generation":150, "max_storage": 30000}},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["CUC","UFU","CUC"],"ingredients":{"U":ingr_repr("uranium_ingot"),"F":ingr_repr("minecraft:furnace"),"C":ingr_repr("minecraft:copper_block")}},
			],
			WIKI_COMPONENT: [
				{"text":"Pretty nuclear Reactor.","color":"green"},
				{"text":"\nConsume the item seen on the texture ^^","color":"gray"},
			],
		},
		"better_nuclear_reactor": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"generation":150, "max_storage": 105000}},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["CUC","UFU","CUC"],"ingredients":{"U":ingr_repr("uranium_core"),"F":ingr_repr("nuclear_reactor"),"C":ingr_repr("minecraft:exposed_copper")}},
			],
			WIKI_COMPONENT: [
				{"text":"Prettier nuclear Reactor!","color":"green"},
				{"text":"\nConsume the item seen on the texture ^^","color":"gray"},
			],
		},
		"amazing_nuclear_reactor": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"generation":150, "max_storage": 105000}},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["CUC","UFU","CUC"],"ingredients":{"U":ingr_repr("californium_ingot"),"F":ingr_repr("better_nuclear_reactor"),"C":ingr_repr("minecraft:weathered_copper")}},
			],
			WIKI_COMPONENT: [
				{"text":"Very Cool nuclear Reactor!!","color":"green"},
				{"text":"\nConsume the item seen on the texture ^^","color":"gray"},
			],
		},
		"incredible_nuclear_reactor": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"generation":150, "max_storage": 105000}},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["CUC","UFU","CUC"],"ingredients":{"U":ingr_repr("californium_core"),"F":ingr_repr("amazing_nuclear_reactor"),"C":ingr_repr("minecraft:oxidized_copper")}},
			],
			WIKI_COMPONENT: [
				{"text":"Ultra Badass nuclear Reactor!!!","color":"green"},
				{"text":"\nConsume the item seen on the texture ^^","color":"gray"},
			],
		},

		# Machines (Battery)
		"uranium_battery": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"storage":0, "max_storage": 150000}},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["GGG","GXG","CCC"],"ingredients":{"G":ingr_repr("uranium_waste_barrel"),"X":ingr_repr("minecraft:bow"),"C":ingr_repr("minecraft:coal_block")}},
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["GAG","GXG","CCC"],"ingredients":{"G":ingr_repr("uranium_waste_barrel"),"A":ingr_repr("uranium_core"),"X":ingr_repr("minecraft:bow"),"C":ingr_repr("minecraft:coal_block")}},
			],
			WIKI_COMPONENT: [
				{"text":"Don't mention lithium to me..","color":"green"},
				{"text":"\nStores up to 150,000 kJ","color":"gray"},
				{"text":"\nModes: Input Only, Output Only, Both (use Battery Switcher)","color":"gray"},
				{"text":"\nBreaking the battery preserves stored energy","color":"gray"},
				{"text":"\nBalances energy storage with adjacent advanced batteries","color":"gray"},
			],
		},
		"californium_battery": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"storage":0, "max_storage": 1000000}},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["GGG","GXG","CCC"],"ingredients":{"G":ingr_repr("californium_waste_barrel"),"X":ingr_repr("uranium_battery"),"C":ingr_repr("californium_block")}},
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["GAG","GXG","CCC"],"ingredients":{"G":ingr_repr("californium_waste_barrel"),"A":ingr_repr("californium_core"),"X":ingr_repr("uranium_battery"),"C":ingr_repr("californium_block")}},
			],
			WIKI_COMPONENT: [
				{"text":"Don't mention lithium to me..","color":"green"},
				{"text":"\nStores up to 1,000,000 kJ","color":"gray"},
				{"text":"\nModes: Input Only, Output Only, Both (use Battery Switcher)","color":"gray"},
				{"text":"\nBreaking the battery preserves stored energy","color":"gray"},
				{"text":"\nBalances energy storage with adjacent advanced batteries","color":"gray"},
			],
		},

		# Machines (Consumer)
		"ore_extractor_1": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"usage":30, "max_storage": 600}},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["IGI","SWS","CCC"],"ingredients":{"I":ingr_repr("minecraft:iron_block"),"G":ingr_repr("minecraft:gold_block"),"S":ingr_repr("minecraft:coal_block"),"W":ingr_repr("minecraft:wooden_pickaxe"),"C":ingr_repr("minecraft:copper_block")}},
			],
			WIKI_COMPONENT: [
				{"text":"It's a cool extractor you got.","color":"green"},
				{"text":"\nGenerate ores from nowhere !","color":"gray"},
				{"text":"\nIs it science ? No, it's magic !","color":"gray"},
			],
		},
		"ore_extractor_2": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"usage":60, "max_storage": 1500}},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["IGI","IWI","CCC"],"ingredients":{"I":ingr_repr("uranium_ingot"),"G":ingr_repr("minecraft:stone_pickaxe"),"W":ingr_repr("ore_extractor_1"),"C":ingr_repr("minecraft:exposed_copper")}},
			],
			WIKI_COMPONENT: [
				{"text":"Hey man, what an extractor !","color":"green"},
				{"text":"\nGenerate ores from nowhere !","color":"gray"},
				{"text":"\nIs it science ? No, it's magic !","color":"gray"},
			],
		},
		"ore_extractor_3": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"usage":100, "max_storage": 3000}},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["IGI","IWI","CCC"],"ingredients":{"I":ingr_repr("uranium_core"),"G":ingr_repr("minecraft:iron_pickaxe"),"W":ingr_repr("ore_extractor_2"),"C":ingr_repr("minecraft:weathered_copper")}},
			],
			WIKI_COMPONENT: [
				{"text":"Never judge a man by his extractor, but your's huge !!","color":"green"},
				{"text":"\nGenerate ores from nowhere !","color":"gray"},
				{"text":"\nIs it science ? No, it's magic !","color":"gray"},
			],
		},
		"ore_extractor_4": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"usage":300, "max_storage": 15000}},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["IGI","IWI","CCC"],"ingredients":{"I":ingr_repr("uranium_block"),"G":ingr_repr("californium_pickaxe"),"W":ingr_repr("ore_extractor_3"),"C":ingr_repr("minecraft:oxidized_copper")}},
			],
			WIKI_COMPONENT: [
				{"text":"Sorry for making eyes contact, but your extractor impress me so much !!!","color":"green"},
				{"text":"\nGenerate ores from nowhere !","color":"gray"},
				{"text":"\nIs it science ? No, it's magic !","color":"gray"},
			],
		},
		"uranium_upgrader": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"usage":0, "max_storage": 20000}},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":[" B ","UCU","CCC"],"ingredients":{"B":ingr_repr("uranium_book"),"U":ingr_repr("uranium_ingot"),"C":ingr_repr("minecraft:copper_block")}},
			],
			WIKI_COMPONENT: [
				{"text":"Wanna be a Radioactive man ?","color":"green"},
				{"text":"\nUsed to Upgrade Uranium Stuff","color":"gray"},
				{"text":"\nNeed 1 Uranium book and 5 MW for each upgrade","color":"gray"},
			],
		},
		"oxidizer": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"usage":100, "max_storage": 10000}},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["CCC","III","III"],"ingredients":{"C":ingr_repr("californium_nugget"),"I":ingr_repr("minecraft:iron_block")}},
			],
			WIKI_COMPONENT: [
				{"text":"Copper Washing","color":"green"},
				{"text":"\nMake a copper block fully oxidized in 15 seconds","color":"gray"},
			],
		},

		# Equipement
		"uranium_helmet":{
			"custom_data": {ns: {"radiation": 150}},
			WIKI_COMPONENT: [
				{"text":"Very cool helmet.","color":"green"},
				{"text":"\nUse radioactive items and food to generate radioactivity.","color":"gray"},
				{"text":"\n[Add 150Bq to your Radiation Limit].","color":"gray"},]},
				
		
		"uranium_chestplate":{
			"custom_data": {ns: {"radiation": 240}},
			WIKI_COMPONENT: [
				{"text":"Very cool chestplate.","color":"green"},
				{"text":"\nUse radioactive items and food to generate radioactivity.","color":"gray"},
				{"text":"\n[Add 240Bq to your Radiation Limit].","color":"gray"},]},
		
		"uranium_leggings":{
			"custom_data": {ns: {"radiation": 210}},
			WIKI_COMPONENT: [
				{"text":"Very cool leggings.","color":"green"},
				{"text":"\nUse radioactive items and food to generate radioactivity.","color":"gray"},
				{"text":"\n[Add 210Bq to your Radiation Limit].","color":"gray"},]},
		
		"uranium_boots":{
			"custom_data": {ns: {"radiation": 120}},
			WIKI_COMPONENT: [
				{"text":"Very cool boots.","color":"green"},
				{"text":"\nUse radioactive items and food to generate radioactivity.","color":"gray"},
				{"text":"\n[Add 120Bq to your Radiation Limit].","color":"gray"},]},
		
		"californium_helmet":{
			"custom_data": {ns: {"radiation": 375}},
			WIKI_COMPONENT: [
				{"text":"Extremely cool helmet.","color":"green"},
				{"text":"\nUse radioactive items and food to generate radioactivity.","color":"gray"},
				{"text":"\n[Add 375Bq to your Radiation Limit].","color":"gray"},]},
		
		"californium_chestplate":{
			"custom_data": {ns: {"radiation": 600}},
			WIKI_COMPONENT: [
				{"text":"Extremely cool chestplate.","color":"green"},
				{"text":"\nUse radioactive items and food to generate radioactivity.","color":"gray"},
				{"text":"\n[Add 600Bq to your Radiation Limit].","color":"gray"},]},
		
		"californium_leggings":{
			"custom_data": {ns: {"radiation": 525}},
			WIKI_COMPONENT: [
				{"text":"Extremely cool leggings.","color":"green"},
				{"text":"\nUse radioactive items and food to generate radioactivity.","color":"gray"},
				{"text":"\n[Add 525Bq to your Radiation Limit].","color":"gray"},]},
		
		"californium_boots":{
			"custom_data": {ns: {"radiation": 300}},
			WIKI_COMPONENT: [
				{"text":"Extremely cool boots.","color":"green"},
				{"text":"\nUse radioactive items and food to generate radioactivity.","color":"gray"},
				{"text":"\n[Add 300Bq to your Radiation Limit].","color":"gray"},
			],
		},

		# "anti_radiation_helmet": {
		# 	"id": "minecraft:leather_helmet", CATEGORY: "material",
		# 	"tooltip_display": {"hidden_components": ["minecraft:unbreakable"]},
		# 	RESULT_OF_CRAFTING:[
		# 		{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["YBY","YCY","   "],"ingredients":{"C":ingr_repr("californium_nugget"),"B":ingr_repr("minecraft:blue_stained_glass_pane"),"Y":ingr_repr("minecraft:yellow_wool")}},
		# 	],
			
		# 	OVERRIDE_MODEL: {"parent":"item/handheld"},
		# 	WIKI_COMPONENT: [
		# 		{"text":"Anti Radiation Armor.","color":"green"},
		# 		{"text":"\nAllow to not takes damage in California (Need full armor)","color":"gray"},
		# 	],
		# },
		# "anti_radiation_chestplate": {
		# 	"id": "minecraft:leather_chestplate", CATEGORY: "material",
		# 	"tooltip_display": {"hidden_components": ["minecraft:unbreakable"]},
		# 	RESULT_OF_CRAFTING:[
		# 		{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["Y Y","YUY","YYY"],"ingredients":{"U":ingr_repr("uranium_core"),"Y":ingr_repr("minecraft:yellow_wool")}},
		# 	],
		# 	OVERRIDE_MODEL: {"parent":"item/handheld"},
		# 	WIKI_COMPONENT: [
		# 		{"text":"Anti Radiation Armor.","color":"green"},
		# 		{"text":"\nAllow to not takes damage in California (Need full armor)","color":"gray"},
		# 	],
		# },
		# "anti_radiation_leggings": {
		# 	"id": "minecraft:leather_leggings", CATEGORY: "material",
		# 	"tooltip_display": {"hidden_components": ["minecraft:unbreakable"]},
		# 	RESULT_OF_CRAFTING:[
		# 		{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["YYY","Y Y","Y Y"],"ingredients":{"Y":ingr_repr("minecraft:yellow_wool")}},
		# 	],
		# 	OVERRIDE_MODEL: {"parent":"item/handheld"},
		# 	WIKI_COMPONENT: [
		# 		{"text":"Anti Radiation Armor.","color":"green"},
		# 		{"text":"\nAllow to not takes damage in California (Need full armor)","color":"gray"},
		# 	],
		# },
		# "anti_radiation_boots": {
		# 	"id": "minecraft:leather_boots", CATEGORY: "material",
		# 	"tooltip_display": {"hidden_components": ["minecraft:unbreakable"]},
		# 	RESULT_OF_CRAFTING:[
		# 		{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["   ","Y Y","YMY"],"ingredients":{"M":ingr_repr("manual"),"Y":ingr_repr("minecraft:yellow_wool")}},
		# 	],
		# 	OVERRIDE_MODEL: {"parent":"item/handheld"},
		# 	WIKI_COMPONENT: [
		# 		{"text":"Anti Radiation Armor.","color":"green"},
		# 		{"text":"\nAllow to not takes damage in California (Need full armor)","color":"gray"},
		# 	],
		# },
	},

		


	# Raw materials

	# Custom blocks
	additions["nuclear_reactor"][VANILLA_BLOCK] = {"id": "minecraft:barrel", "apply_facing": True}
	additions["better_nuclear_reactor"][VANILLA_BLOCK] = {"id": "minecraft:barrel", "apply_facing": True}
	additions["amazing_nuclear_reactor"][VANILLA_BLOCK] = {"id": "minecraft:barrel", "apply_facing": True}
	additions["incredible_nuclear_reactor"][VANILLA_BLOCK] = {"id": "minecraft:barrel", "apply_facing": True}
	additions["ore_extractor_1"][VANILLA_BLOCK] = {"id": "minecraft:barrel", "apply_facing": True}
	additions["ore_extractor_2"][VANILLA_BLOCK] = {"id": "minecraft:barrel", "apply_facing": True}
	additions["ore_extractor_3"][VANILLA_BLOCK] = {"id": "minecraft:barrel", "apply_facing": True}
	additions["ore_extractor_4"][VANILLA_BLOCK] = {"id": "minecraft:barrel", "apply_facing": True}
	additions["uranium_upgrader"][VANILLA_BLOCK] = {"id": "minecraft:barrel", "apply_facing": True}
	additions["uranium_waste_barrel"][VANILLA_BLOCK] = {"id": "minecraft:emerald_block", "apply_facing": False}
	additions["californium_waste_barrel"][VANILLA_BLOCK] = {"id": "minecraft:gold_block", "apply_facing": False}
	additions["uranium_battery"][VANILLA_BLOCK] = {"id": "minecraft:emerald_block", "apply_facing": False}
	additions["californium_battery"][VANILLA_BLOCK] = {"id": "minecraft:iron_block", "apply_facing": False}
	additions["oxidizer"][VANILLA_BLOCK] = {"id": "minecraft:barrel", "apply_facing": True}



	# Update the definitions with new data
	for k, v in additions.items():
		if k in Mem.definitions:
			Mem.definitions[k].update(v)
		else:
			Mem.definitions[k] = v
	info("Database additions loaded")

