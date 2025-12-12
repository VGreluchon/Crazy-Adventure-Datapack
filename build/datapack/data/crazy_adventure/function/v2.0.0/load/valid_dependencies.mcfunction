
#> crazy_adventure:v2.0.0/load/valid_dependencies
#
# @within	crazy_adventure:v2.0.0/load/secondary
#			crazy_adventure:v2.0.0/load/valid_dependencies 1t replace [ scheduled ]
#

# Waiting for a player to get the game version, but stop function if no player found
execute unless entity @p run schedule function crazy_adventure:v2.0.0/load/valid_dependencies 1t replace
execute unless entity @p run return 0
execute store result score #game_version crazy_adventure.data run data get entity @p DataVersion

# Check if the game version is supported
scoreboard players set #mcload_error crazy_adventure.data 0
execute unless score #game_version crazy_adventure.data matches 4669.. run scoreboard players set #mcload_error crazy_adventure.data 1

# Decode errors
execute if score #mcload_error crazy_adventure.data matches 1 run tellraw @a {"translate": "crazy_adventure_error_this_version_is_made_for_minecraft_1_21_11","color":"red"}
execute if score #dependency_error crazy_adventure.data matches 1 run tellraw @a {"translate": "crazy_adventure_error_libraries_are_missingplease_download_the_r","color":"red"}
execute if score #dependency_error crazy_adventure.data matches 1 unless score #common_signals.major load.status matches 0.. run tellraw @a {"translate": "crazy_adventure.common_signals_v0_2_0","color":"gold","click_event":{"action":"open_url","url":"https://github.com/Stoupy51/CommonSignals"}}
execute if score #dependency_error crazy_adventure.data matches 1 if score #common_signals.major load.status matches 0 unless score #common_signals.minor load.status matches 2.. run tellraw @a {"translate": "crazy_adventure.common_signals_v0_2_0","color":"gold","click_event":{"action":"open_url","url":"https://github.com/Stoupy51/CommonSignals"}}
execute if score #dependency_error crazy_adventure.data matches 1 unless score #smithed.custom_block.major load.status matches 0.. run tellraw @a {"translate": "crazy_adventure.smithed_custom_block_v0_7_1","color":"gold","click_event":{"action":"open_url","url":"https://wiki.smithed.dev/libraries/custom-block/"}}
execute if score #dependency_error crazy_adventure.data matches 1 if score #smithed.custom_block.major load.status matches 0 unless score #smithed.custom_block.minor load.status matches 7.. run tellraw @a {"translate": "crazy_adventure.smithed_custom_block_v0_7_1","color":"gold","click_event":{"action":"open_url","url":"https://wiki.smithed.dev/libraries/custom-block/"}}
execute if score #dependency_error crazy_adventure.data matches 1 if score #smithed.custom_block.major load.status matches 0 if score #smithed.custom_block.minor load.status matches 7 unless score #smithed.custom_block.patch load.status matches 1.. run tellraw @a {"translate": "crazy_adventure.smithed_custom_block_v0_7_1","color":"gold","click_event":{"action":"open_url","url":"https://wiki.smithed.dev/libraries/custom-block/"}}
execute if score #dependency_error crazy_adventure.data matches 1 unless score #smithed.crafter.major load.status matches 0.. run tellraw @a {"translate": "crazy_adventure.smithed_crafter_v0_7_1","color":"gold","click_event":{"action":"open_url","url":"https://wiki.smithed.dev/libraries/crafter/"}}
execute if score #dependency_error crazy_adventure.data matches 1 if score #smithed.crafter.major load.status matches 0 unless score #smithed.crafter.minor load.status matches 7.. run tellraw @a {"translate": "crazy_adventure.smithed_crafter_v0_7_1","color":"gold","click_event":{"action":"open_url","url":"https://wiki.smithed.dev/libraries/crafter/"}}
execute if score #dependency_error crazy_adventure.data matches 1 if score #smithed.crafter.major load.status matches 0 if score #smithed.crafter.minor load.status matches 7 unless score #smithed.crafter.patch load.status matches 1.. run tellraw @a {"translate": "crazy_adventure.smithed_crafter_v0_7_1","color":"gold","click_event":{"action":"open_url","url":"https://wiki.smithed.dev/libraries/crafter/"}}
execute if score #dependency_error crazy_adventure.data matches 1 unless score #furnace_nbt_recipes.major load.status matches 1.. run tellraw @a {"translate": "crazy_adventure.furnace_nbt_recipes_v1_10_1","color":"gold","click_event":{"action":"open_url","url":"https://github.com/Stoupy51/FurnaceNbtRecipes"}}
execute if score #dependency_error crazy_adventure.data matches 1 if score #furnace_nbt_recipes.major load.status matches 1 unless score #furnace_nbt_recipes.minor load.status matches 10.. run tellraw @a {"translate": "crazy_adventure.furnace_nbt_recipes_v1_10_1","color":"gold","click_event":{"action":"open_url","url":"https://github.com/Stoupy51/FurnaceNbtRecipes"}}
execute if score #dependency_error crazy_adventure.data matches 1 if score #furnace_nbt_recipes.major load.status matches 1 if score #furnace_nbt_recipes.minor load.status matches 10 unless score #furnace_nbt_recipes.patch load.status matches 1.. run tellraw @a {"translate": "crazy_adventure.furnace_nbt_recipes_v1_10_1","color":"gold","click_event":{"action":"open_url","url":"https://github.com/Stoupy51/FurnaceNbtRecipes"}}
execute if score #dependency_error crazy_adventure.data matches 1 unless score #smart_ore_generation.major load.status matches 1.. run tellraw @a {"translate": "crazy_adventure.smartoregeneration_v1_7_2","color":"gold","click_event":{"action":"open_url","url":"https://github.com/Stoupy51/SmartOreGeneration"}}
execute if score #dependency_error crazy_adventure.data matches 1 if score #smart_ore_generation.major load.status matches 1 unless score #smart_ore_generation.minor load.status matches 7.. run tellraw @a {"translate": "crazy_adventure.smartoregeneration_v1_7_2","color":"gold","click_event":{"action":"open_url","url":"https://github.com/Stoupy51/SmartOreGeneration"}}
execute if score #dependency_error crazy_adventure.data matches 1 if score #smart_ore_generation.major load.status matches 1 if score #smart_ore_generation.minor load.status matches 7 unless score #smart_ore_generation.patch load.status matches 2.. run tellraw @a {"translate": "crazy_adventure.smartoregeneration_v1_7_2","color":"gold","click_event":{"action":"open_url","url":"https://github.com/Stoupy51/SmartOreGeneration"}}
execute if score #dependency_error crazy_adventure.data matches 1 unless score #simplenergy.major load.status matches 2.. run tellraw @a {"translate": "crazy_adventure.simplenergy_v2_0_15","color":"gold","click_event":{"action":"open_url","url":"https://modrinth.com/datapack/simplenergy"}}
execute if score #dependency_error crazy_adventure.data matches 1 if score #simplenergy.major load.status matches 2 unless score #simplenergy.minor load.status matches 0.. run tellraw @a {"translate": "crazy_adventure.simplenergy_v2_0_15","color":"gold","click_event":{"action":"open_url","url":"https://modrinth.com/datapack/simplenergy"}}
execute if score #dependency_error crazy_adventure.data matches 1 if score #simplenergy.major load.status matches 2 if score #simplenergy.minor load.status matches 0 unless score #simplenergy.patch load.status matches 15.. run tellraw @a {"translate": "crazy_adventure.simplenergy_v2_0_15","color":"gold","click_event":{"action":"open_url","url":"https://modrinth.com/datapack/simplenergy"}}

# Load Crazy Adventure
execute if score #game_version crazy_adventure.data matches 1.. if score #mcload_error crazy_adventure.data matches 0 if score #dependency_error crazy_adventure.data matches 0 run function crazy_adventure:v2.0.0/load/confirm_load

