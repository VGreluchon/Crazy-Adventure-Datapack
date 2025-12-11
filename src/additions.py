
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
		"uranium_core": {
			"id": "minecraft:warped_fungus_on_a_stick", CATEGORY: MISC,
			"tooltip_display": {"hidden_components": ["minecraft:unbreakable"]},
			RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"equipment","shape":[" U ","UIU"," U "],"ingredients":{"U":ingr_repr("uranium_ingot"),"I":ingr_repr("iron_block")}}],
			OVERRIDE_MODEL: {"parent":"item/handheld"},
			WIKI_COMPONENT: [
				{"text":"Very interesting right ?","color":"green"},
				{"text":"\nUsed to craft a lot of things","color":"gray"},
			],
			
		},
		"californium_core": {
			"id": "minecraft:warped_fungus_on_a_stick", CATEGORY: MISC,
			"tooltip_display": {"hidden_components": ["minecraft:unbreakable"]},
			RESULT_OF_CRAFTING:[{"type":"crafting_shaped","result_count":1,"category":"equipment","shape":[" C ","CUC"," C "],"ingredients":{"U":ingr_repr("uranium_core"),"C":ingr_repr("Californium_ingot")}}],
			OVERRIDE_MODEL: {"parent":"item/handheld"},
			WIKI_COMPONENT: [
				{"text":"Extremely interesting right ?","color":"green"},
				{"text":"\nUsed to craft a lot of things","color":"gray"},
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
				{"text":"\n[Add 300Bq to your Radiation Limit].","color":"gray"},]},
	}

	# Raw materials

	# Custom blocks

	# additions["geiger_counter"] = {VANILLA_BLOCK: {"id": "minecraft:iron_block", "apply_facing": False}}


	# Update the definitions with new data
	for k, v in additions.items():
		if k in Mem.definitions:
			Mem.definitions[k].update(v)
		else:
			Mem.definitions[k] = v
	info("Database additions loaded")

