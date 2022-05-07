
#Machines Visuals & Work
	execute if entity @s[tag=crazy_adventure.nuclear_reactor] run function crazy_adventure:visual/nuclear_reactor
	execute if entity @s[tag=crazy_adventure.ore_extractor_lvl_1] if score @s energy.storage matches 20.. run function crazy_adventure:work/ore_extractor/lvl_1
	execute if entity @s[tag=crazy_adventure.ore_extractor_lvl_2] if score @s energy.storage matches 40.. run function crazy_adventure:work/ore_extractor/lvl_2
	execute if entity @s[tag=crazy_adventure.ore_extractor_lvl_3] if score @s energy.storage matches 70.. run function crazy_adventure:work/ore_extractor/lvl_3
	execute if entity @s[tag=crazy_adventure.ore_extractor_lvl_4] if score @s energy.storage matches 100.. run function crazy_adventure:work/ore_extractor/lvl_4
	execute if entity @s[tag=crazy_adventure.storm_stick_charger] run function crazy_adventure:work/stick_charger/storm_stick_charger/main
	execute if entity @s[tag=crazy_adventure.shield_stick_charger] run function crazy_adventure:work/stick_charger/shield_stick_charger/main
	execute if entity @s[tag=crazy_adventure.fireball_stick_charger] run function crazy_adventure:work/stick_charger/fireball_stick_charger/main

	execute if entity @s[tag=crazy_adventure.banana_sapling] run function crazy_adventure:work/banana_sapling/main
