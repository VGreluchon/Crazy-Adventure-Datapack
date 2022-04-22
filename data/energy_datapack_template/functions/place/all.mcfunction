
##Called by function energy_datapack_template:place/main
##that is called by function tag #smithed.custom_block:event/on_place

tag @s add energy_datapack_template.placer

execute if data storage smithed.custom_block:main blockApi{id:"energy_datapack_template:template_block"} run function energy_datapack_template:place/template_block/main
execute if data storage smithed.custom_block:main blockApi{id:"energy_datapack_template:template_battery"} run function energy_datapack_template:place/template_battery/main
execute if data storage smithed.custom_block:main blockApi{id:"energy_datapack_template:empty_generator"} run function energy_datapack_template:place/empty_generator/main
execute if data storage smithed.custom_block:main blockApi{id:"energy_datapack_template:empty_consumer"} run function energy_datapack_template:place/empty_consumer/main

tag @s remove energy_datapack_template.placer
