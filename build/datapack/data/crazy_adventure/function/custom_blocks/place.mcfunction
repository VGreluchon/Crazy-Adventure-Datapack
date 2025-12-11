
#> crazy_adventure:custom_blocks/place
#
# @within	crazy_adventure:custom_blocks/on_place
#

tag @s add crazy_adventure.placer
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:uranium_block"} run function crazy_adventure:custom_blocks/uranium_block/place_main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:uranium_ore"} run function crazy_adventure:custom_blocks/uranium_ore/place_main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:californium_block"} run function crazy_adventure:custom_blocks/californium_block/place_main
execute if data storage smithed.custom_block:main blockApi{id:"crazy_adventure:californium_ore"} run function crazy_adventure:custom_blocks/californium_ore/place_main
tag @s remove crazy_adventure.placer

