
# ruff: noqa: E501
# Imports
from stewbeet import * # type: ignore

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
			"id": "minecraft:warped_fungus_on_a_stick", CATEGORY: MISC,
			"tooltip_display": {"hidden_components": ["minecraft:unbreakable"]},
			"lore": [{"text":"Allows you to know your radiation amount","italic":False,"color":"gray"},{"text":"[Hold in offhand]","italic":False,"color":"white"}],
			RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"equipment","shape":["UU","CC","CC"],"ingredients":{"U":ingr_repr("uranium_ingot"),"C":ingr_repr("minecraft:copper_ingot")}}],
			OVERRIDE_MODEL: {"parent":"item/handheld"},
			WIKI_COMPONENT: [
				{"text":"Good to know your Tchernobyl rate.","color":"green"},
				{"text":"\nHold in your offhand to know how much radiation is there is your body.","color":"gray"},
			],
		},
		"manual": {
			RESULT_OF_CRAFTING:[{"type":"crafting_shapeless","result_count":1,"category":"misc","ingredients":[ingr_repr("minecraft:book"),ingr_repr("minecraft:tnt")]}],
			WIKI_COMPONENT: [
				{"text":"What a wonderful manual","color":"green"},
				{"text":"\nObtainable by dropping a TNT on a heavy workbench","color":"gray"},
			],
		},

		# Materials
		"uranium_core": {
			"id": CUSTOM_ITEM_VANILLA, CATEGORY: MISC,
			"tooltip_display": {"hidden_components": ["minecraft:unbreakable"]},
			RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"equipment","shape":[" U ","UIU"," U "],"ingredients":{"U":ingr_repr("uranium_ingot"),"I":ingr_repr("minecraft:iron_block")}}],
			OVERRIDE_MODEL: {"parent":"item/handheld"},
			WIKI_COMPONENT: [
				{"text":"Very interesting right ?","color":"green"},
				{"text":"\nUsed to craft a lot of things","color":"gray"},
			],
		},
		"uranium_waste": {
			"id": CUSTOM_ITEM_VANILLA, CATEGORY: MISC,
			"tooltip_display": {"hidden_components": ["minecraft:unbreakable"]},
			OVERRIDE_MODEL: {"parent":"item/handheld"},
			WIKI_COMPONENT: [
				{"text":"That looks tasty.","color":"green"},
				{"text":"\nObtained with nuclear reactors 1 & 2","color":"gray"},
			],
		},
		"uranium_waste_barrel": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: MISC,
			RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"equipment","shape":["UUU","UIU","UUU"],"ingredients":{"U":ingr_repr("uranium_waste"),"I":ingr_repr("minecraft:barrel")}}],
			WIKI_COMPONENT: [
				{"text":"Safe storage of radioactive waste.","color":"green"},
				{"text":"\nMade with Uranium Waste","color":"gray"},
			],
		},
		"uranium_shard": {
			"id": CUSTOM_ITEM_VANILLA, CATEGORY: MISC,
			"tooltip_display": {"hidden_components": ["minecraft:unbreakable"]},
			OVERRIDE_MODEL: {"parent":"item/handheld"},
			WIKI_COMPONENT: [
				{"text":"Shard covered with Uranium.","color":"green"},
				{"text":"\nObtained by killing monsters summoned by the Battle Bus","color":"gray"},
			],
		},
		"uranium_book": {
			"id": CUSTOM_ITEM_VANILLA, CATEGORY: MISC,
			"tooltip_display": {"hidden_components": ["minecraft:unbreakable"]},
			RESULT_OF_CRAFTING:[{"type":"crafting_shapeless","result_count":1,"category":"equipment","ingredients":[ingr_repr("uranium_shard"),ingr_repr("uranium_book")]}],
			OVERRIDE_MODEL: {"parent":"item/handheld"},
			WIKI_COMPONENT: [
				{"text":"Magic Book for Radioactive Uses","color":"green"},
				{"text":"\nUse it in Uranium Upgrader to upgrade Uranium stuff","color":"gray"},
			],
		},
		"californium_core": {
   			"id": CUSTOM_ITEM_VANILLA, CATEGORY: MISC,
   			"tooltip_display": {"hidden_components": ["minecraft:unbreakable"]},
   			RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"equipment","shape":[" C ","CUC"," C "],"ingredients":{"C":ingr_repr("californium_ingot"),"U":ingr_repr("uranium_core")}}],
  			OVERRIDE_MODEL: {"parent":"item/handheld"},
  			WIKI_COMPONENT: [
        		{"text":"Extremely interesting right ?","color":"green"},
        		{"text":"\nUsed to craft a lot of things (Well, not really ATM)","color":"gray"},
    		],
		},
		"californium_waste": {
			"id": CUSTOM_ITEM_VANILLA, CATEGORY: MISC,
			"tooltip_display": {"hidden_components": ["minecraft:unbreakable"]},
			OVERRIDE_MODEL: {"parent":"item/handheld"},
			WIKI_COMPONENT: [
				{"text":"That looks tasty.","color":"green"},
				{"text":"\nObtained with nuclear reactors 3 & 4","color":"gray"},
			],
		},
		"californium_waste_barrel": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: MISC,
			RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"equipment","shape":["UUU","UIU","UUU"],"ingredients":{"U":ingr_repr("californium_waste"),"I":ingr_repr("minecraft:barrel")}}],
			WIKI_COMPONENT: [
				{"text":"Safe storage of radioactive waste.","color":"green"},
				{"text":"\nMade with Californium Waste","color":"gray"},
			],
		},
		"souls_bag": {
			"id": CUSTOM_ITEM_VANILLA, CATEGORY: MISC,
			RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"equipment","shape":["SCS","CFC","CCC"],"ingredients":{"S":ingr_repr("minecraft:string"),"C":ingr_repr("minecraft:charcoal"),"F":ingr_repr("minecraft:fermented_spider_eye")}}],
			"lore": [{"text":"Kill mobs while holding in OffHand","italic":False,"color":"gray"},{"text":"When full, can be drop on Boss Altar to spawn it","italic":False,"color":"gray"}],			
			WIKI_COMPONENT: [
				{"text":"Texture was made before they add the bundle.","color":"green"},
				{"text":"\nKill 100 mobs to spawn the boss with Boss Altar","color":"gray"},
			],
		},
		"boss_altar": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: MISC,
			RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"equipment","shape":["BWB","BUB","BSB"],"ingredients":{"B":ingr_repr("minecraft:black_candle"),"W":ingr_repr("minecraft:wither_skeleton_skull"),"U":ingr_repr("uranium_core"),"S":ingr_repr("minecraft:charcoal")}}],
			"lore": [{"text":"Kill mobs while holding in OffHand","italic":False,"color":"gray"},{"text":"When full, can be drop on Boss Altar to spawn it","italic":False,"color":"gray"}],			
			WIKI_COMPONENT: [
				{"text":"Texture was made before they add the bundle.","color":"green"},
				{"text":"\nKill 100 mobs to spawn the boss with Boss Altar","color":"gray"},
			],
		},

		# Machines (Generator)
		"nuclear_reactor": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "generator", "custom_data": {"energy": {"generation":150, "max_storage": 30000}},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["CUC","UFU","CUC"],"ingredients":{"U":ingr_repr("uranium_ingot"),"F":ingr_repr("minecraft:furnace"),"C":ingr_repr("minecraft:copper_block")}},
			],
			WIKI_COMPONENT: [
				{"text":"Pretty nuclear Reactor.","color":"green"},
				{"text":"\nConsume the item seen on the texture ^^","color":"gray"},
			],
		},
		"better_nuclear_reactor": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "generator", "custom_data": {"energy": {"generation":150, "max_storage": 105000}},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["CUC","UFU","CUC"],"ingredients":{"U":ingr_repr("uranium_core"),"F":ingr_repr("nuclear_reactor"),"C":ingr_repr("minecraft:exposed_copper")}},
			],
			WIKI_COMPONENT: [
				{"text":"Prettier nuclear Reactor!","color":"green"},
				{"text":"\nConsume the item seen on the texture ^^","color":"gray"},
			],
		},
		"amazing_nuclear_reactor": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "generator", "custom_data": {"energy": {"generation":150, "max_storage": 105000}},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["CUC","UFU","CUC"],"ingredients":{"U":ingr_repr("californium_ingot"),"F":ingr_repr("better_nuclear_reactor"),"C":ingr_repr("minecraft:weathered_copper")}},
			],
			WIKI_COMPONENT: [
				{"text":"Very Cool nuclear Reactor!!","color":"green"},
				{"text":"\nConsume the item seen on the texture ^^","color":"gray"},
			],
		},
		"incredible_nuclear_reactor": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "generator", "custom_data": {"energy": {"generation":150, "max_storage": 105000}},
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
		"storm_stick_charger": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"usage":30, "max_storage": 3000}},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":[" L ","UCU","III"],"ingredients":{"L":ingr_repr("minecraft:lightning_rod"),"C":ingr_repr("uranium_core"),"U":ingr_repr("uranium_waste_barrel"),"I":ingr_repr("minecraft:iron_block")}},
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":[" L ","UCU","IRI"],"ingredients":{"L":ingr_repr("minecraft:lightning_rod"),"C":ingr_repr("uranium_core"),"U":ingr_repr("uranium_waste_barrel"),"I":ingr_repr("minecraft:iron_block"),"R":ingr_repr("minecraft:redstone_block")}},
			],
			"lore": [{"text":"Need Energy, Lightning rod on top and Chargeless stick","italic":False,"color":"gray"},{"text":"If a lightning stroke the lighting rod, it add a charge","italic":False,"color":"gray"},{"text":"[Create 1 charge every 20 seconds]","italic":False,"color":"white"}],
			WIKI_COMPONENT: [
				{"text":"To make Storm Stick","color":"green"},
				{"text":"\nNeed energy, lightning rod on top and chargeless stick","color":"gray"},
			],
		},
		"fireball_stick_charger": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"usage":30, "max_storage": 3000}},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":[" L ","UCU","III"],"ingredients":{"L":ingr_repr("minecraft:fire_charge"),"C":ingr_repr("uranium_core"),"U":ingr_repr("uranium_waste_barrel"),"I":ingr_repr("minecraft:iron_block")}},
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":[" L ","UCU","IRI"],"ingredients":{"L":ingr_repr("minecraft:fire_charge"),"C":ingr_repr("uranium_core"),"U":ingr_repr("uranium_waste_barrel"),"I":ingr_repr("minecraft:iron_block"),"R":ingr_repr("minecraft:redstone_block")}},
			],
			"lore": [{"text":"Need Energy and Chargeless stick","italic":False,"color":"gray"},{"text":"Put fire on top to add a charge","italic":False,"color":"gray"},{"text":"[Create 1 charge every 20 seconds]","italic":False,"color":"white"}],
			WIKI_COMPONENT: [
				{"text":"To make Fireball Stick","color":"green"},
				{"text":"\nNeed energy and chargeless stick","color":"gray"},
			],
		},
		"shield_stick_charger": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"usage":30, "max_storage": 3000}},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":[" L ","UCU","III"],"ingredients":{"L":ingr_repr("minecraft:crying_obsidian"),"C":ingr_repr("uranium_core"),"U":ingr_repr("uranium_waste_barrel"),"I":ingr_repr("minecraft:iron_block")}},
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":[" L ","UCU","IRI"],"ingredients":{"L":ingr_repr("minecraft:crying_obsidian"),"C":ingr_repr("uranium_core"),"U":ingr_repr("uranium_waste_barrel"),"I":ingr_repr("minecraft:iron_block"),"R":ingr_repr("minecraft:redstone_block")}},
			],
			"lore": [{"text":"Need Energy and Chargeless stick","italic":False,"color":"gray"},{"text":"Put obsidian on top to add 3 charges","italic":False,"color":"gray"},{"text":"[Create 1 charge every 20 seconds]","italic":False,"color":"white"}],
			WIKI_COMPONENT: [
				{"text":"To make Shield Stick","color":"green"},
				{"text":"\nNeed energy and chargeless stick","color":"gray"},
			],
		},
		"fertilizer_stick_charger": {
			"id": CUSTOM_BLOCK_VANILLA, CATEGORY: "energy", "custom_data": {"energy": {"usage":30, "max_storage": 3000}},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":[" L ","UCU","III"],"ingredients":{"L":ingr_repr("minecraft:bone_block"),"C":ingr_repr("uranium_core"),"U":ingr_repr("uranium_waste_barrel"),"I":ingr_repr("minecraft:iron_block")}},
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":[" L ","UCU","IRI"],"ingredients":{"L":ingr_repr("minecraft:bone_block"),"C":ingr_repr("uranium_core"),"U":ingr_repr("uranium_waste_barrel"),"I":ingr_repr("minecraft:iron_block"),"R":ingr_repr("minecraft:redstone_block")}},
			],
			"lore": [{"text":"Need Energy and Chargeless stick","italic":False,"color":"gray"},{"text":"Put farmland on top to add 1 charges","italic":False,"color":"gray"},{"text":"[Create 1 charge every 10 seconds]","italic":False,"color":"white"}],
			WIKI_COMPONENT: [
				{"text":"To make Fertilizer Stick","color":"green"},
				{"text":"\nNeed energy and chargeless stick","color":"gray"},
			],
		},

		# Equipement
		"uranium_helmet":{
			"custom_data": {ns: {"radiation": 150}},
			WIKI_COMPONENT: [
				{"text":"Very cool helmet.","color":"green"},
				{"text":"\nUse radioactive items and food to generate radioactivity.","color":"gray"},
				{"text":"\n[Add 150Bq to your Radiation Limit].","color":"gray"},
			]
		},
		"uranium_chestplate":{
			"custom_data": {ns: {"radiation": 240}},
			WIKI_COMPONENT: [
				{"text":"Very cool chestplate.","color":"green"},
				{"text":"\nUse radioactive items and food to generate radioactivity.","color":"gray"},
				{"text":"\n[Add 240Bq to your Radiation Limit].","color":"gray"},
			]
		},
		"uranium_leggings":{
			"custom_data": {ns: {"radiation": 210}},
			WIKI_COMPONENT: [
				{"text":"Very cool leggings.","color":"green"},
				{"text":"\nUse radioactive items and food to generate radioactivity.","color":"gray"},
				{"text":"\n[Add 210Bq to your Radiation Limit].","color":"gray"},
			]
		},
		"uranium_boots":{
			"custom_data": {ns: {"radiation": 120}},
			WIKI_COMPONENT: [
				{"text":"Very cool boots.","color":"green"},
				{"text":"\nUse radioactive items and food to generate radioactivity.","color":"gray"},
				{"text":"\n[Add 120Bq to your Radiation Limit].","color":"gray"},
			]
		},
		"californium_helmet":{
			"custom_data": {ns: {"radiation": 375}},
			WIKI_COMPONENT: [
				{"text":"Extremely cool helmet.","color":"green"},
				{"text":"\nUse radioactive items and food to generate radioactivity.","color":"gray"},
				{"text":"\n[Add 375Bq to your Radiation Limit].","color":"gray"},
			]
		},
		"californium_chestplate":{
			"custom_data": {ns: {"radiation": 600}},
			WIKI_COMPONENT: [
				{"text":"Extremely cool chestplate.","color":"green"},
				{"text":"\nUse radioactive items and food to generate radioactivity.","color":"gray"},
				{"text":"\n[Add 600Bq to your Radiation Limit].","color":"gray"},
			]
		},
		"californium_leggings":{
			"custom_data": {ns: {"radiation": 525}},
			WIKI_COMPONENT: [
				{"text":"Extremely cool leggings.","color":"green"},
				{"text":"\nUse radioactive items and food to generate radioactivity.","color":"gray"},
				{"text":"\n[Add 525Bq to your Radiation Limit].","color":"gray"},
			]
		},
		"californium_boots":{
			"custom_data": {ns: {"radiation": 300}},
			WIKI_COMPONENT: [
				{"text":"Extremely cool boots.","color":"green"},
				{"text":"\nUse radioactive items and food to generate radioactivity.","color":"gray"},
				{"text":"\n[Add 300Bq to your Radiation Limit].","color":"gray"},
			],
		},

		"anti_radiation_helmet": {
			"id": "minecraft:leather_helmet", CATEGORY: "equipment",
			"custom_data": {ns: {"radiation": 80}},
			"tooltip_display": {"hidden_components": ["minecraft:unbreakable"]},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["YBY","YCY","   "],"ingredients":{"C":ingr_repr("californium_nugget"),"B":ingr_repr("minecraft:blue_stained_glass_pane"),"Y":ingr_repr("minecraft:yellow_wool")}},
			],
			
			OVERRIDE_MODEL: {"parent":"item/handheld"},
			WIKI_COMPONENT: [
				{"text":"Anti Radiation Armor.","color":"green"},
				{"text":"\nAllow to not takes damage in California (Need full armor)","color":"gray"},
			],
		},
		"anti_radiation_chestplate": {
			"id": "minecraft:leather_chestplate", CATEGORY: "equipment",
			"custom_data": {ns: {"radiation": 130}},
			"tooltip_display": {"hidden_components": ["minecraft:unbreakable"]},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["Y Y","YUY","YYY"],"ingredients":{"U":ingr_repr("uranium_core"),"Y":ingr_repr("minecraft:yellow_wool")}},
			],
			OVERRIDE_MODEL: {"parent":"item/handheld"},
			WIKI_COMPONENT: [
				{"text":"Anti Radiation Armor.","color":"green"},
				{"text":"\nAllow to not takes damage in California (Need full armor)","color":"gray"},
			],
		},
		"anti_radiation_leggings": {
			"id": "minecraft:leather_leggings", CATEGORY: "equipment",
			"custom_data": {ns: {"radiation": 70}},
			"tooltip_display": {"hidden_components": ["minecraft:unbreakable"]},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["YYY","Y Y","Y Y"],"ingredients":{"Y":ingr_repr("minecraft:yellow_wool")}},
			],
			OVERRIDE_MODEL: {"parent":"item/handheld"},
			WIKI_COMPONENT: [
				{"text":"Anti Radiation Armor.","color":"green"},
				{"text":"\nAllow to not takes damage in California (Need full armor)","color":"gray"},
			],
		},
		"anti_radiation_boots": {
			"id": "minecraft:leather_boots", CATEGORY: "equipment",
			"custom_data": {ns: {"radiation": 50}},
			"tooltip_display": {"hidden_components": ["minecraft:unbreakable"]},
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["   ","Y Y","YMY"],"ingredients":{"M":ingr_repr("manual"),"Y":ingr_repr("minecraft:yellow_wool")}},
			],
			OVERRIDE_MODEL: {"parent":"item/handheld"},
			WIKI_COMPONENT: [
				{"text":"Anti Radiation Armor.","color":"green"},
				{"text":"\nAllow to not takes damage in California (Need full armor)","color":"gray"},
			],
		},
		"anti_radiation_glove": {
			"id": CUSTOM_ITEM_VANILLA, CATEGORY: "equipment",
			"custom_data": {ns: {"radiation": 300}},
			"max_damage": 1000,
			"blocks_attacks": {
				"block_delay_seconds": 0.25,
				"block_sound": "minecraft:item.shield.block",
				"bypassed_by": "#minecraft:bypasses_shield",
				"disabled_sound": "minecraft:item.shield.break",
				"item_damage": {
				"base": 1,
				"factor": 1,
				"threshold": 3
				}
			},
			"equippable": {
				"slot": "offhand",
				"swappable": False
			},
			"max_stack_size": 1,
			RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["BCB","BUB"," B "],"ingredients":{"U":ingr_repr("uranium_core"),"C":ingr_repr("californium_ingot"),"B":ingr_repr("minecraft:blue_wool")}},
			],
			"lore": [{"text":"Allow you to not take radiation damage in California (without the anti radiation armor)","italic":False,"color":"gray"},{"text":"You don't need the Anti Radiation Armorg","italic":False,"color":"gray"},{"text":"[Need to be in Offhand to use]","italic":False,"color":"white"},{"text":"[It's a shield, you can block damage with]","italic":False,"color":"white"},{"text":"[Lose durability over time]","italic":False,"color":"white"}],
			OVERRIDE_MODEL: {"parent":"item/shield"},
			WIKI_COMPONENT: [
				{"text":"Anti Radiation Glove.","color":"green"},
				{"text":"\nAllow you to not take radiation damage in California (without the anti radiation armor)","color":"gray"},
				{"text":"\n[Need to be in Offhand to use]","color":"white"},
				{"text":"\n[It's a shield, you can block damage with]","color":"white"},
				{"text":"\n[Lose durability over time]","color":"white"},
			],
		},

		#Radioactivity Items
		"banana": {
   			"id": "minecraft:apple", CATEGORY: "radiactivity",
  			OVERRIDE_MODEL: {"parent":"item/handheld"},
			"lore": [{"text":"Gives 40Bq to your Body","italic":False,"color":"gray"}],
  			WIKI_COMPONENT: [
        		{"text":"Banana","color":"green"},
        		{"text":"\nFound on banana trees","color":"gray"},
    		],
		},
		"uranium_banana": {
   			"id": "minecraft:golden_apple", CATEGORY: "radiactivity",
  			OVERRIDE_MODEL: {"parent":"item/handheld"},
			"lore": [{"text":"Gives 200Bq to your Body","italic":False,"color":"gray"},{"text":"Gives Resistance 1 effect for 60 seconds","italic":False,"color":"gray"},{"text":"Gives Wither 1 effect for 90 seconds","italic":False,"color":"gray"}],
						RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["UUU","UBU","UUU"],"ingredients":{"U":ingr_repr("uranium_ingot"),"B":ingr_repr("banana")}},
			],
  			WIKI_COMPONENT: [
        		{"text":"Banana with weird color","color":"green"},
        		{"text":"\nAre you really gonna eat that ?","color":"gray"},
    		],
		},
		"uranium_apple": {
   			"id": "minecraft:golden_apple", CATEGORY: "radiactivity",
  			OVERRIDE_MODEL: {"parent":"item/handheld"},
			"lore": [{"text":"Gives 1.000Bq to your Body","italic":False,"color":"gray"},{"text":"Gives Resistance 2 effect for 60 seconds","italic":False,"color":"gray"},{"text":"Gives Wither 1 effect for 90 seconds","italic":False,"color":"gray"}],
						RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":["UUU","UAU","UUU"],"ingredients":{"U":ingr_repr("uranium_block"),"A":ingr_repr("minecraft:golden_apple")}},
			],
  			WIKI_COMPONENT: [
        		{"text":"Apple with weird color","color":"green"},
        		{"text":"\nAre you really gonna eat that ?\nGives Wither effect due to excessive radioactivity ","color":"gray"},
    		],
		},
		"chargeless_stick": {
   			"id": CUSTOM_ITEM_VANILLA, CATEGORY: "radiactivity",
  			OVERRIDE_MODEL: {"parent":"item/handheld"},
			"lore": [{"text":"No effect, need a Stick Charger","italic":False,"color":"gray"}],
						RESULT_OF_CRAFTING:[
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":[" UC"," BU","B  "],"ingredients":{"C":ingr_repr("uranium_core"),"U":ingr_repr("uranium_waste"),"B":ingr_repr("minecraft:blaze_rod")}},
				{"type":"crafting_shaped","result_count":1,"category":"misc","shape":[" UC"," BU","B  "],"ingredients":{"C":ingr_repr("uranium_core"),"U":ingr_repr("uranium_waste"),"B":ingr_repr("minecraft:breeze_rod")}},
			],
  			WIKI_COMPONENT: [
        		{"text":"Stick with no charges","color":"green"},
        		{"text":"\nPut it in a Stick Charger ","color":"gray"},
    		],
		},
		"fireball_stick": {
   			"id": "minecraft:warped_fungus_on_a_stick", CATEGORY: "radiactivity",
  			OVERRIDE_MODEL: {"parent":"item/handheld"},
			"lore": [{"text":"Launch fireball where you are looking","italic":False,"color":"gray"},{"text":"[Cost 120Bq to launch]","italic":False,"color":"white"},{"text":"[10s Cooldown]","italic":False,"color":"white"},{"text":"[10 Charges]","italic":False,"color":"white"}],
  			WIKI_COMPONENT: [
        		{"text":"Is it a bird, is it a plane ? NO IT'S A (not that) HUGE FIREBALL","color":"green"},
        		{"text":"\nPut a chargeless stick in the Fireball Stick Charger","color":"gray"},
    		],
		},
		"storm_stick": {
   			"id": "minecraft:warped_fungus_on_a_stick", CATEGORY: "radiactivity",
  			OVERRIDE_MODEL: {"parent":"item/handheld"},
			"lore": [{"text":"Summon Lightings where you are looking","italic":False,"color":"gray"},{"text":"[Cost 120Bq to launch]","italic":False,"color":"white"},{"text":"[10s Cooldown]","italic":False,"color":"white"},{"text":"[10 Charges]","italic":False,"color":"white"}],
  			WIKI_COMPONENT: [
        		{"text":"Starting apocalypse at your level","color":"green"},
        		{"text":"\nPut a chargeless stick in the Storm Stick Charger","color":"gray"},
    		],
		},
		"shield_stick": {
   			"id": "minecraft:warped_fungus_on_a_stick", CATEGORY: "radiactivity",
  			OVERRIDE_MODEL: {"parent":"item/handheld"},
			"lore": [{"text":"Gives you Regeneration 3, Resistance 3, Slowness 1 for 10 seconds","italic":False,"color":"gray"},{"text":"[Cost 170Bq to launch]","italic":False,"color":"white"},{"text":"[30s Cooldown]","italic":False,"color":"white"},{"text":"[5 Charges]","italic":False,"color":"white"}],
  			WIKI_COMPONENT: [
        		{"text":"Not overpowered at all...","color":"green"},
        		{"text":"\nPut a chargeless stick in the Shield Stick Charger","color":"gray"},
    		],
		},
		"fertilizer_stick": {
   			"id": "minecraft:warped_fungus_on_a_stick", CATEGORY: "radiactivity",
  			OVERRIDE_MODEL: {"parent":"item/handheld"},
			"lore": [{"text":"Grow your seeds","italic":False,"color":"gray"},{"text":"[Cost 30Bq to launch]","italic":False,"color":"white"},{"text":"[1s Cooldown]","italic":False,"color":"white"},{"text":"[30 Charges]","italic":False,"color":"white"}],
  			WIKI_COMPONENT: [
        		{"text":"Give me your seed !","color":"green"},
        		{"text":"\nPut a chargeless stick in the Fertilizer Stick Charger","color":"gray"},
    		],
		},


		# Others
		"banana_plant":{
			"id": CUSTOM_BLOCK_VANILLA,
			NO_SILK_TOUCH_DROP: {"id": "banana", "count": 1},
			OVERRIDE_MODEL: {"credit":"Made with Blockbench","texture_size":[32,32],"textures":{"0":f"{ns}:item/banana_plant"},"elements":[{"from":[6,13,13],"to":[8,14,14],"rotation":{"angle":0,"axis":"y","origin":[-1,0,0]},"faces":{"north":{"uv":[13,3,14,3.5],"texture":"#0"},"east":{"uv":[8.5,13,9,13.5],"texture":"#0"},"south":{"uv":[3.5,13,4.5,13.5],"texture":"#0"},"west":{"uv":[8.5,13.5,9,14],"texture":"#0"},"up":{"uv":[14,4,13,3.5],"texture":"#0"},"down":{"uv":[5.5,13,4.5,13.5],"texture":"#0"}}},{"from":[6,14,12],"to":[8,16,14],"rotation":{"angle":0,"axis":"y","origin":[-1,0,0]},"faces":{"north":{"uv":[7,3,8,4],"texture":"#0"},"east":{"uv":[11,0,12,1],"texture":"#0"},"south":{"uv":[11,1,12,2],"texture":"#0"},"west":{"uv":[11,2,12,3],"texture":"#0"},"up":{"uv":[12,4,11,3],"texture":"#0"},"down":{"uv":[5,11,4,12],"texture":"#0"}}},{"from":[6,10,11],"to":[8,14,13],"rotation":{"angle":0,"axis":"y","origin":[-1,0,0]},"faces":{"north":{"uv":[6,0,7,2],"texture":"#0"},"east":{"uv":[2,6,3,8],"texture":"#0"},"south":{"uv":[3,6,4,8],"texture":"#0"},"west":{"uv":[6,5,7,7],"texture":"#0"},"up":{"uv":[12,5,11,4],"texture":"#0"},"down":{"uv":[12,5,11,6],"texture":"#0"}}},{"from":[6,8,10],"to":[8,12,11],"rotation":{"angle":0,"axis":"y","origin":[-1,0,0]},"faces":{"north":{"uv":[7,0,8,2],"texture":"#0"},"east":{"uv":[6,11,6.5,13],"texture":"#0"},"south":{"uv":[4,7,5,9],"texture":"#0"},"west":{"uv":[11,6,11.5,8],"texture":"#0"},"up":{"uv":[14,5,13,4.5],"texture":"#0"},"down":{"uv":[14,5,13,5.5],"texture":"#0"}}},{"from":[6,6,9],"to":[8,10,10],"rotation":{"angle":0,"axis":"y","origin":[-1,0,0]},"faces":{"north":{"uv":[7,5,8,7],"texture":"#0"},"east":{"uv":[6.5,11,7,13],"texture":"#0"},"south":{"uv":[6,7,7,9],"texture":"#0"},"west":{"uv":[7,11,7.5,13],"texture":"#0"},"up":{"uv":[6.5,13.5,5.5,13],"texture":"#0"},"down":{"uv":[7.5,13,6.5,13.5],"texture":"#0"}}},{"from":[6,6,3],"to":[8,8,9],"rotation":{"angle":0,"axis":"y","origin":[-1,0,0]},"faces":{"north":{"uv":[11,8,12,9],"texture":"#0"},"east":{"uv":[0,0,3,1],"texture":"#0"},"south":{"uv":[11,9,12,10],"texture":"#0"},"west":{"uv":[0,1,3,2],"texture":"#0"},"up":{"uv":[1,5,0,2],"texture":"#0"},"down":{"uv":[2,2,1,5],"texture":"#0"}}},{"from":[6,5,4],"to":[8,6,8],"rotation":{"angle":0,"axis":"y","origin":[-1,0,0]},"faces":{"north":{"uv":[7.5,13,8.5,13.5],"texture":"#0"},"east":{"uv":[11,10,13,10.5],"texture":"#0"},"south":{"uv":[13,10,14,10.5],"texture":"#0"},"west":{"uv":[11,10.5,13,11],"texture":"#0"},"up":{"uv":[8,9,7,7],"texture":"#0"},"down":{"uv":[1,8,0,10],"texture":"#0"}}},{"from":[6,8,8],"to":[8,9,9],"rotation":{"angle":0,"axis":"y","origin":[-1,0,0]},"faces":{"north":{"uv":[10.5,13,11.5,13.5],"texture":"#0"},"east":{"uv":[14.5,8,15,8.5],"texture":"#0"},"south":{"uv":[13,10.5,14,11],"texture":"#0"},"west":{"uv":[8.5,14.5,9,15],"texture":"#0"},"up":{"uv":[14,11.5,13,11],"texture":"#0"},"down":{"uv":[12.5,13,11.5,13.5],"texture":"#0"}}},{"from":[6,8,3],"to":[8,9,5],"rotation":{"angle":0,"axis":"y","origin":[-1,0,0]},"faces":{"north":{"uv":[13,11.5,14,12],"texture":"#0"},"east":{"uv":[13,12,14,12.5],"texture":"#0"},"south":{"uv":[13,12.5,14,13],"texture":"#0"},"west":{"uv":[13,13,14,13.5],"texture":"#0"},"up":{"uv":[12,12,11,11],"texture":"#0"},"down":{"uv":[12.5,6,11.5,7],"texture":"#0"}}},{"from":[6,9,11],"to":[8,10,12],"rotation":{"angle":0,"axis":"y","origin":[-1,0,0]},"faces":{"north":{"uv":[13.5,0,14.5,0.5],"texture":"#0"},"east":{"uv":[14.5,8.5,15,9],"texture":"#0"},"south":{"uv":[13.5,0.5,14.5,1],"texture":"#0"},"west":{"uv":[9,14.5,9.5,15],"texture":"#0"},"up":{"uv":[4.5,14,3.5,13.5],"texture":"#0"},"down":{"uv":[5.5,13.5,4.5,14],"texture":"#0"}}},{"from":[0,9,14],"to":[2,13,16],"rotation":{"angle":22.5,"axis":"y","origin":[-1,0,0]},"faces":{"north":{"uv":[8,0,9,2],"texture":"#0"},"east":{"uv":[1,8,2,10],"texture":"#0"},"south":{"uv":[2,8,3,10],"texture":"#0"},"west":{"uv":[8,2,9,4],"texture":"#0"},"up":{"uv":[12.5,8,11.5,7],"texture":"#0"},"down":{"uv":[1,12,0,13],"texture":"#0"}}},{"from":[0,7,13],"to":[2,11,14],"rotation":{"angle":22.5,"axis":"y","origin":[-1,0,0]},"faces":{"north":{"uv":[3,8,4,10],"texture":"#0"},"east":{"uv":[7.5,11,8,13],"texture":"#0"},"south":{"uv":[8,4,9,6],"texture":"#0"},"west":{"uv":[12,0,12.5,2],"texture":"#0"},"up":{"uv":[6.5,14,5.5,13.5],"texture":"#0"},"down":{"uv":[14.5,6,13.5,6.5],"texture":"#0"}}},{"from":[0,8,14],"to":[2,9,15],"rotation":{"angle":22.5,"axis":"y","origin":[-1,0,0]},"faces":{"north":{"uv":[6.5,13.5,7.5,14],"texture":"#0"},"east":{"uv":[14.5,9,15,9.5],"texture":"#0"},"south":{"uv":[13.5,6.5,14.5,7],"texture":"#0"},"west":{"uv":[9.5,14.5,10,15],"texture":"#0"},"up":{"uv":[14.5,7.5,13.5,7],"texture":"#0"},"down":{"uv":[8.5,13.5,7.5,14],"texture":"#0"}}},{"from":[0,5,12],"to":[2,9,13],"rotation":{"angle":22.5,"axis":"y","origin":[-1,0,0]},"faces":{"north":{"uv":[5,8,6,10],"texture":"#0"},"east":{"uv":[1,12,1.5,14],"texture":"#0"},"south":{"uv":[8,6,9,8],"texture":"#0"},"west":{"uv":[1.5,12,2,14],"texture":"#0"},"up":{"uv":[14.5,8,13.5,7.5],"texture":"#0"},"down":{"uv":[14.5,8,13.5,8.5],"texture":"#0"}}},{"from":[0,5,6],"to":[2,7,12],"rotation":{"angle":22.5,"axis":"y","origin":[-1,0,0]},"faces":{"north":{"uv":[2,12,3,13],"texture":"#0"},"east":{"uv":[2,2,5,3],"texture":"#0"},"south":{"uv":[12,2,13,3],"texture":"#0"},"west":{"uv":[3,0,6,1],"texture":"#0"},"up":{"uv":[3,6,2,3],"texture":"#0"},"down":{"uv":[4,3,3,6],"texture":"#0"}}},{"from":[0,7,11],"to":[2,8,12],"rotation":{"angle":22.5,"axis":"y","origin":[-1,0,0]},"faces":{"north":{"uv":[13.5,8.5,14.5,9],"texture":"#0"},"east":{"uv":[14.5,9.5,15,10],"texture":"#0"},"south":{"uv":[13.5,9,14.5,9.5],"texture":"#0"},"west":{"uv":[10,14.5,10.5,15],"texture":"#0"},"up":{"uv":[14.5,10,13.5,9.5],"texture":"#0"},"down":{"uv":[11.5,13.5,10.5,14],"texture":"#0"}}},{"from":[0,7,6],"to":[2,8,8],"rotation":{"angle":22.5,"axis":"y","origin":[-1,0,0]},"faces":{"north":{"uv":[11.5,13.5,12.5,14],"texture":"#0"},"east":{"uv":[13,13.5,14,14],"texture":"#0"},"south":{"uv":[1,14,2,14.5],"texture":"#0"},"west":{"uv":[14,2,15,2.5],"texture":"#0"},"up":{"uv":[4,13,3,12],"texture":"#0"},"down":{"uv":[13,3,12,4],"texture":"#0"}}},{"from":[0,4,7],"to":[2,5,11],"rotation":{"angle":22.5,"axis":"y","origin":[-1,0,0]},"faces":{"north":{"uv":[2.5,14,3.5,14.5],"texture":"#0"},"east":{"uv":[4,12,6,12.5],"texture":"#0"},"south":{"uv":[14,2.5,15,3],"texture":"#0"},"west":{"uv":[12,4,14,4.5],"texture":"#0"},"up":{"uv":[9,10,8,8],"texture":"#0"},"down":{"uv":[10,0,9,2],"texture":"#0"}}},{"from":[18,13,11],"to":[20,14,12],"rotation":{"angle":-45,"axis":"y","origin":[11,0,-2]},"faces":{"north":{"uv":[14,3,15,3.5],"texture":"#0"},"east":{"uv":[10.5,14.5,11,15],"texture":"#0"},"south":{"uv":[3.5,14,4.5,14.5],"texture":"#0"},"west":{"uv":[11,14.5,11.5,15],"texture":"#0"},"up":{"uv":[15,4,14,3.5],"texture":"#0"},"down":{"uv":[15,4,14,4.5],"texture":"#0"}}},{"from":[18,10,9],"to":[20,14,11],"rotation":{"angle":-45,"axis":"y","origin":[11,0,-2]},"faces":{"north":{"uv":[9,2,10,4],"texture":"#0"},"east":{"uv":[4,9,5,11],"texture":"#0"},"south":{"uv":[9,4,10,6],"texture":"#0"},"west":{"uv":[6,9,7,11],"texture":"#0"},"up":{"uv":[13,5.5,12,4.5],"texture":"#0"},"down":{"uv":[9,12,8,13],"texture":"#0"}}},{"from":[18,8,8],"to":[20,12,9],"rotation":{"angle":-45,"axis":"y","origin":[11,0,-2]},"faces":{"north":{"uv":[9,6,10,8],"texture":"#0"},"east":{"uv":[12,8,12.5,10],"texture":"#0"},"south":{"uv":[7,9,8,11],"texture":"#0"},"west":{"uv":[9,12,9.5,14],"texture":"#0"},"up":{"uv":[5.5,14.5,4.5,14],"texture":"#0"},"down":{"uv":[15,4.5,14,5],"texture":"#0"}}},{"from":[18,9,9],"to":[20,10,10],"rotation":{"angle":-45,"axis":"y","origin":[11,0,-2]},"faces":{"north":{"uv":[14,5,15,5.5],"texture":"#0"},"east":{"uv":[11.5,14.5,12,15],"texture":"#0"},"south":{"uv":[5.5,14,6.5,14.5],"texture":"#0"},"west":{"uv":[12,14.5,12.5,15],"texture":"#0"},"up":{"uv":[15,6,14,5.5],"texture":"#0"},"down":{"uv":[7.5,14,6.5,14.5],"texture":"#0"}}},{"from":[18,6,7],"to":[20,10,8],"rotation":{"angle":-45,"axis":"y","origin":[11,0,-2]},"faces":{"north":{"uv":[9,8,10,10],"texture":"#0"},"east":{"uv":[9.5,12,10,14],"texture":"#0"},"south":{"uv":[0,10,1,12],"texture":"#0"},"west":{"uv":[10,12,10.5,14],"texture":"#0"},"up":{"uv":[8.5,14.5,7.5,14],"texture":"#0"},"down":{"uv":[9.5,14,8.5,14.5],"texture":"#0"}}},{"from":[18,6,1],"to":[20,8,7],"rotation":{"angle":-45,"axis":"y","origin":[11,0,-2]},"faces":{"north":{"uv":[10.5,12,11.5,13],"texture":"#0"},"east":{"uv":[3,1,6,2],"texture":"#0"},"south":{"uv":[12,11,13,12],"texture":"#0"},"west":{"uv":[4,3,7,4],"texture":"#0"},"up":{"uv":[5,7,4,4],"texture":"#0"},"down":{"uv":[1,5,0,8],"texture":"#0"}}},{"from":[18,8,6],"to":[20,9,7],"rotation":{"angle":-45,"axis":"y","origin":[11,0,-2]},"faces":{"north":{"uv":[9.5,14,10.5,14.5],"texture":"#0"},"east":{"uv":[12.5,14.5,13,15],"texture":"#0"},"south":{"uv":[14,10,15,10.5],"texture":"#0"},"west":{"uv":[13,14.5,13.5,15],"texture":"#0"},"up":{"uv":[11.5,14.5,10.5,14],"texture":"#0"},"down":{"uv":[15,10.5,14,11],"texture":"#0"}}},{"from":[18,8,1],"to":[20,9,3],"rotation":{"angle":-45,"axis":"y","origin":[11,0,-2]},"faces":{"north":{"uv":[14,11,15,11.5],"texture":"#0"},"east":{"uv":[11.5,14,12.5,14.5],"texture":"#0"},"south":{"uv":[14,11.5,15,12],"texture":"#0"},"west":{"uv":[14,12,15,12.5],"texture":"#0"},"up":{"uv":[12.5,13,11.5,12],"texture":"#0"},"down":{"uv":[13.5,0,12.5,1],"texture":"#0"}}},{"from":[18,5,2],"to":[20,6,6],"rotation":{"angle":-45,"axis":"y","origin":[11,0,-2]},"faces":{"north":{"uv":[12.5,14,13.5,14.5],"texture":"#0"},"east":{"uv":[12,5.5,14,6],"texture":"#0"},"south":{"uv":[14,12.5,15,13],"texture":"#0"},"west":{"uv":[12.5,1,14.5,1.5],"texture":"#0"},"up":{"uv":[11,2,10,0],"texture":"#0"},"down":{"uv":[2,10,1,12],"texture":"#0"}}},{"from":[12,4,5],"to":[14,5,9],"rotation":{"angle":-22.5,"axis":"y","origin":[11,0,-2]},"faces":{"north":{"uv":[14,13,15,13.5],"texture":"#0"},"east":{"uv":[12.5,1.5,14.5,2],"texture":"#0"},"south":{"uv":[13.5,14,14.5,14.5],"texture":"#0"},"west":{"uv":[4,12.5,6,13],"texture":"#0"},"up":{"uv":[3,12,2,10],"texture":"#0"},"down":{"uv":[11,2,10,4],"texture":"#0"}}},{"from":[12,7,4],"to":[14,8,6],"rotation":{"angle":-22.5,"axis":"y","origin":[11,0,-2]},"faces":{"north":{"uv":[14,13.5,15,14],"texture":"#0"},"east":{"uv":[14.5,0,15.5,0.5],"texture":"#0"},"south":{"uv":[14.5,0.5,15.5,1],"texture":"#0"},"west":{"uv":[1,14.5,2,15],"texture":"#0"},"up":{"uv":[13.5,7,12.5,6],"texture":"#0"},"down":{"uv":[13.5,7,12.5,8],"texture":"#0"}}},{"from":[12,7,9],"to":[14,8,10],"rotation":{"angle":-22.5,"axis":"y","origin":[11,0,-2]},"faces":{"north":{"uv":[14.5,1,15.5,1.5],"texture":"#0"},"east":{"uv":[13.5,14.5,14,15],"texture":"#0"},"south":{"uv":[14.5,1.5,15.5,2],"texture":"#0"},"west":{"uv":[14,14.5,14.5,15],"texture":"#0"},"up":{"uv":[3.5,15,2.5,14.5],"texture":"#0"},"down":{"uv":[4.5,14.5,3.5,15],"texture":"#0"}}},{"from":[12,5,4],"to":[14,7,10],"rotation":{"angle":-22.5,"axis":"y","origin":[11,0,-2]},"faces":{"north":{"uv":[12.5,8,13.5,9],"texture":"#0"},"east":{"uv":[5,2,8,3],"texture":"#0"},"south":{"uv":[12.5,9,13.5,10],"texture":"#0"},"west":{"uv":[5,4,8,5],"texture":"#0"},"up":{"uv":[2,8,1,5],"texture":"#0"},"down":{"uv":[6,5,5,8],"texture":"#0"}}},{"from":[12,5,10],"to":[14,9,11],"rotation":{"angle":-22.5,"axis":"y","origin":[11,0,-2]},"faces":{"north":{"uv":[3,10,4,12],"texture":"#0"},"east":{"uv":[12.5,12,13,14],"texture":"#0"},"south":{"uv":[10,4,11,6],"texture":"#0"},"west":{"uv":[0,13,0.5,15],"texture":"#0"},"up":{"uv":[5.5,15,4.5,14.5],"texture":"#0"},"down":{"uv":[6.5,14.5,5.5,15],"texture":"#0"}}},{"from":[12,8,12],"to":[14,9,13],"rotation":{"angle":-22.5,"axis":"y","origin":[11,0,-2]},"faces":{"north":{"uv":[14.5,6,15.5,6.5],"texture":"#0"},"east":{"uv":[14.5,14,15,14.5],"texture":"#0"},"south":{"uv":[6.5,14.5,7.5,15],"texture":"#0"},"west":{"uv":[14.5,14.5,15,15],"texture":"#0"},"up":{"uv":[15.5,7,14.5,6.5],"texture":"#0"},"down":{"uv":[15.5,7,14.5,7.5],"texture":"#0"}}},{"from":[12,7,11],"to":[14,11,12],"rotation":{"angle":-22.5,"axis":"y","origin":[11,0,-2]},"faces":{"north":{"uv":[5,10,6,12],"texture":"#0"},"east":{"uv":[0.5,13,1,15],"texture":"#0"},"south":{"uv":[10,6,11,8],"texture":"#0"},"west":{"uv":[2,13,2.5,15],"texture":"#0"},"up":{"uv":[8.5,15,7.5,14.5],"texture":"#0"},"down":{"uv":[15.5,7.5,14.5,8],"texture":"#0"}}},{"from":[12,9,12],"to":[14,13,14],"rotation":{"angle":-22.5,"axis":"y","origin":[11,0,-2]},"faces":{"north":{"uv":[8,10,9,12],"texture":"#0"},"east":{"uv":[10,8,11,10],"texture":"#0"},"south":{"uv":[9,10,10,12],"texture":"#0"},"west":{"uv":[10,10,11,12],"texture":"#0"},"up":{"uv":[14,3,13,2],"texture":"#0"},"down":{"uv":[3.5,13,2.5,14],"texture":"#0"}}}],"display":{"thirdperson_righthand":{"rotation":[88,0,-1]},"fixed":{"rotation":[-116,0,0],"translation":[2.25,-5,-7],"scale":[3.14258,4,3.32344]}},"groups":[{"name":"group","origin":[0,0,0],"color":0,"children":[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34]}]}
		}
	}


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
	additions["boss_altar"][VANILLA_BLOCK] = {"id": "minecraft:obsidian", "apply_facing": False}
	additions["storm_stick_charger"][VANILLA_BLOCK] = {"id": "minecraft:furnace", "apply_facing": True}
	additions["fireball_stick_charger"][VANILLA_BLOCK] = {"id": "minecraft:furnace", "apply_facing": True}
	additions["shield_stick_charger"][VANILLA_BLOCK] = {"id": "minecraft:furnace", "apply_facing": True}
	additions["fertilizer_stick_charger"][VANILLA_BLOCK] = {"id": "minecraft:furnace", "apply_facing": True}
	additions["banana_plant"][VANILLA_BLOCK] = {"id": "minecraft:end_rod", "apply_facing": False}

	# Update the definitions with new data
	Mem.definitions = super_merge_dict(Mem.definitions, additions)
	info("Database additions loaded")

