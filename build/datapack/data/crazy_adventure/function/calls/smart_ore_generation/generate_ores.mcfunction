
#> crazy_adventure:calls/smart_ore_generation/generate_ores
#
# @within	#smart_ore_generation:v1/signals/generate_ores
#

# Generate Californium Ore (x1.2)
scoreboard players set #dimension smart_ore_generation.data -1
execute if dimension minecraft:overworld run scoreboard players set #dimension smart_ore_generation.data 0
execute if dimension stardust:cavern run scoreboard players set #dimension smart_ore_generation.data 1
execute if dimension some_other:dimension run scoreboard players set #dimension smart_ore_generation.data 2
scoreboard players set #min_height smart_ore_generation.data 0
scoreboard players set #max_height smart_ore_generation.data 70
execute if score #dimension smart_ore_generation.data matches 0.. run function crazy_adventure:calls/smart_ore_generation/veins/californium_ore
execute if score #dimension smart_ore_generation.data matches 0.. if predicate {condition:"minecraft:random_chance",chance:0.20000} run function crazy_adventure:calls/smart_ore_generation/veins/californium_ore

# Generate Uranium Ore (x1.2)
scoreboard players set #dimension smart_ore_generation.data -1
execute if dimension minecraft:overworld run scoreboard players set #dimension smart_ore_generation.data 0
execute if dimension stardust:cavern run scoreboard players set #dimension smart_ore_generation.data 1
execute if dimension some_other:dimension run scoreboard players set #dimension smart_ore_generation.data 2
scoreboard players set #min_height smart_ore_generation.data 0
scoreboard players set #max_height smart_ore_generation.data 30
execute if score #dimension smart_ore_generation.data matches 0.. run function crazy_adventure:calls/smart_ore_generation/veins/uranium_ore
execute if score #dimension smart_ore_generation.data matches 0.. if predicate {condition:"minecraft:random_chance",chance:0.20000} run function crazy_adventure:calls/smart_ore_generation/veins/uranium_ore

# Generate Deepslate Uranium Ore (x1.3)
scoreboard players set #dimension smart_ore_generation.data -1
execute if dimension minecraft:overworld run scoreboard players set #dimension smart_ore_generation.data 0
execute if dimension stardust:cavern run scoreboard players set #dimension smart_ore_generation.data 1
execute if dimension some_other:dimension run scoreboard players set #dimension smart_ore_generation.data 2
scoreboard players set #min_height smart_ore_generation.data -50
scoreboard players set #max_height smart_ore_generation.data 0
execute if score #dimension smart_ore_generation.data matches 0.. run function crazy_adventure:calls/smart_ore_generation/veins/deepslate_uranium_ore
execute if score #dimension smart_ore_generation.data matches 0.. if predicate {condition:"minecraft:random_chance",chance:0.30000} run function crazy_adventure:calls/smart_ore_generation/veins/deepslate_uranium_ore

