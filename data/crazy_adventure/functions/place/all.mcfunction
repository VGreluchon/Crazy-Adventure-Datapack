
##Called by function crazy_adventure:place/main
##that is called by function tag #smithed.custom_block:event/on_place

tag @s add crazy_adventure.placer

execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:template_block"} run function crazy_adventure:place/template_block/main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:empty_generator"} run function crazy_adventure:place/empty_generator/main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:empty_consumer"} run function crazy_adventure:place/empty_consumer/main

execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:uranium_ore"} run function crazy_adventure:place/uranium_ore/main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:uranium_block"} run function crazy_adventure:place/uranium_block/main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:radioactive_waste_barrel"} run function crazy_adventure:place/radioactive_waste_barrel/main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:nuclear_reactor"} run function crazy_adventure:place/nuclear_reactor/main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:uranium_battery"} run function crazy_adventure:place/uranium_battery/main


tag @s remove crazy_adventure.placer
