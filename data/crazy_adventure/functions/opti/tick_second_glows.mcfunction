
#Machines Visuals & Work
	execute if entity @s[tag=crazy_adventure.nuclear_reactor] run function crazy_adventure:visual/nuclear_reactor/nuclear_reactor
	execute if entity @s[tag=crazy_adventure.better_nuclear_reactor] run function crazy_adventure:visual/nuclear_reactor/better_nuclear_reactor
	execute if entity @s[tag=crazy_adventure.amazing_nuclear_reactor] run function crazy_adventure:visual/nuclear_reactor/amazing_nuclear_reactor
	execute if entity @s[tag=crazy_adventure.incredible_nuclear_reactor] run function crazy_adventure:visual/nuclear_reactor/incredible_nuclear_reactor
	execute if entity @s[tag=crazy_adventure.ore_extractor_lvl_1] if score @s energy.storage matches 20.. run function crazy_adventure:work/ore_extractor/lvl_1
	execute if entity @s[tag=crazy_adventure.ore_extractor_lvl_2] if score @s energy.storage matches 40.. run function crazy_adventure:work/ore_extractor/lvl_2
	execute if entity @s[tag=crazy_adventure.ore_extractor_lvl_3] if score @s energy.storage matches 70.. run function crazy_adventure:work/ore_extractor/lvl_3
	execute if entity @s[tag=crazy_adventure.ore_extractor_lvl_4] if score @s energy.storage matches 100.. run function crazy_adventure:work/ore_extractor/lvl_4
	execute if entity @s[tag=crazy_adventure.storm_stick_charger] run function crazy_adventure:work/stick_charger/storm_stick_charger/main
	execute if entity @s[tag=crazy_adventure.shield_stick_charger] run function crazy_adventure:work/stick_charger/shield_stick_charger/main
	execute if entity @s[tag=crazy_adventure.fireball_stick_charger] run function crazy_adventure:work/stick_charger/fireball_stick_charger/main
	execute if entity @s[tag=crazy_adventure.fertilizer_stick_charger] run function crazy_adventure:work/stick_charger/fertilizer_stick_charger/main
	execute if entity @s[tag=crazy_adventure.uranium_upgrader] if block ~ ~ ~ barrel[open=true] run function crazy_adventure:work/upgrader/uranium_upgrader/main
	execute if entity @s[tag=crazy_adventure.oxidizer] run function crazy_adventure:visual/oxidizer


	execute if entity @s[tag=crazy_adventure.banana_sapling] run function crazy_adventure:work/banana_sapling/main

	execute if entity @s[tag=crazy_adventure.boss_altar,tag=!crazy_adventure.spawned] positioned ~ ~1 ~ as @e[type=item,dx=0,dy=0,dz=0,nbt={Item:{tag:{crazy_adventure:{filled_souls_bag:1b}}}}] run function crazy_adventure:work/boss_altar
	execute as @e[type=item,tag=!crazy_adventure.checked] at @s run function crazy_adventure:utils/item_check