
#Machines Visuals & Work
	execute if entity @s[tag=crazy_adventure.nuclear_reactor] run function crazy_adventure:visual/nuclear_reactor
	execute if entity @s[tag=crazy_adventure.ore_extractor_lvl_1] if score @s energy.storage matches 5.. run function crazy_adventure:work/ore_extractor/lvl_1
	execute if entity @s[tag=crazy_adventure.ore_extractor_lvl_2] if score @s energy.storage matches 10.. run function crazy_adventure:work/ore_extractor/lvl_2
	execute if entity @s[tag=crazy_adventure.ore_extractor_lvl_3] if score @s energy.storage matches 30.. run function crazy_adventure:work/ore_extractor/lvl_3
	execute if entity @s[tag=crazy_adventure.ore_extractor_lvl_4] if score @s energy.storage matches 100.. run function crazy_adventure:work/ore_extractor/lvl_4

