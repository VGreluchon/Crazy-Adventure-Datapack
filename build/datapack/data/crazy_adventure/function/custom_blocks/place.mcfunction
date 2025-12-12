
#> crazy_adventure:custom_blocks/place
#
# @within	crazy_adventure:custom_blocks/on_place
#

tag @s add crazy_adventure.placer
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:uranium_block"} run function crazy_adventure:custom_blocks/uranium_block/place_main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:uranium_ore"} run function crazy_adventure:custom_blocks/uranium_ore/place_main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:californium_block"} run function crazy_adventure:custom_blocks/californium_block/place_main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:californium_ore"} run function crazy_adventure:custom_blocks/californium_ore/place_main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:uranium_waste_barrel"} run function crazy_adventure:custom_blocks/uranium_waste_barrel/place_main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:californium_waste_barrel"} run function crazy_adventure:custom_blocks/californium_waste_barrel/place_main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:boss_altar"} run function crazy_adventure:custom_blocks/boss_altar/place_main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:nuclear_reactor"} run function crazy_adventure:custom_blocks/nuclear_reactor/place_main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:better_nuclear_reactor"} run function crazy_adventure:custom_blocks/better_nuclear_reactor/place_main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:amazing_nuclear_reactor"} run function crazy_adventure:custom_blocks/amazing_nuclear_reactor/place_main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:incredible_nuclear_reactor"} run function crazy_adventure:custom_blocks/incredible_nuclear_reactor/place_main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:uranium_battery"} run function crazy_adventure:custom_blocks/uranium_battery/place_main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:californium_battery"} run function crazy_adventure:custom_blocks/californium_battery/place_main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:ore_extractor_1"} run function crazy_adventure:custom_blocks/ore_extractor_1/place_main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:ore_extractor_2"} run function crazy_adventure:custom_blocks/ore_extractor_2/place_main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:ore_extractor_3"} run function crazy_adventure:custom_blocks/ore_extractor_3/place_main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:ore_extractor_4"} run function crazy_adventure:custom_blocks/ore_extractor_4/place_main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:uranium_upgrader"} run function crazy_adventure:custom_blocks/uranium_upgrader/place_main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:oxidizer"} run function crazy_adventure:custom_blocks/oxidizer/place_main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:storm_stick_charger"} run function crazy_adventure:custom_blocks/storm_stick_charger/place_main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:fireball_stick_charger"} run function crazy_adventure:custom_blocks/fireball_stick_charger/place_main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:shield_stick_charger"} run function crazy_adventure:custom_blocks/shield_stick_charger/place_main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:fertilizer_stick_charger"} run function crazy_adventure:custom_blocks/fertilizer_stick_charger/place_main
tag @s remove crazy_adventure.placer

