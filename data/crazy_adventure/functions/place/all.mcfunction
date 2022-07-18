
##Called by function crazy_adventure:place/main
##that is called by function tag #smithed.custom_block:event/on_place

tag @s add crazy_adventure.placer

execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:uranium_ore"} run function crazy_adventure:place/uranium_ore/main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:uranium_block"} run function crazy_adventure:place/uranium_block/main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:radioactive_waste_barrel"} run function crazy_adventure:place/radioactive_waste_barrel/main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:californium_waste_barrel"} run function crazy_adventure:place/californium_waste_barrel/main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:nuclear_reactor"} run function crazy_adventure:place/nuclear_reactor/main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:better_nuclear_reactor"} run function crazy_adventure:place/better_nuclear_reactor/main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:amazing_nuclear_reactor"} run function crazy_adventure:place/amazing_nuclear_reactor/main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:incredible_nuclear_reactor"} run function crazy_adventure:place/incredible_nuclear_reactor/main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:uranium_battery"} run function crazy_adventure:place/uranium_battery/main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:californium_battery"} run function crazy_adventure:place/californium_battery/main

execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:ore_extractor_lvl_1"} run function crazy_adventure:place/ore_extractor_lvl_1/main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:ore_extractor_lvl_2"} run function crazy_adventure:place/ore_extractor_lvl_2/main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:ore_extractor_lvl_3"} run function crazy_adventure:place/ore_extractor_lvl_3/main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:ore_extractor_lvl_4"} run function crazy_adventure:place/ore_extractor_lvl_4/main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:storm_stick_charger"} run function crazy_adventure:place/storm_stick_charger/main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:shield_stick_charger"} run function crazy_adventure:place/shield_stick_charger/main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:fireball_stick_charger"} run function crazy_adventure:place/fireball_stick_charger/main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:banana_sapling"} run function crazy_adventure:place/banana_sapling/main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:banana_plant"} run function crazy_adventure:place/banana_plant/main

execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:californium_ore"} run function crazy_adventure:place/californium_ore/main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:californium_block"} run function crazy_adventure:place/californium_block/main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:boss_altar"} run function crazy_adventure:place/boss_altar/main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:boss_altar_on"} run function crazy_adventure:place/boss_altar_on/main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:uranium_upgrader"} run function crazy_adventure:place/uranium_upgrader/main

tag @s remove crazy_adventure.placer
