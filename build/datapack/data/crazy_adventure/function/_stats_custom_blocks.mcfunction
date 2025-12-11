
#> crazy_adventure:_stats_custom_blocks
#
# @within	???
#

scoreboard players add #total_custom_blocks crazy_adventure.data 0
scoreboard players add #total_vanilla_polished_deepslate crazy_adventure.data 0
scoreboard players add #total_vanilla_iron_block crazy_adventure.data 0
scoreboard players add #total_vanilla_cobblestone crazy_adventure.data 0
scoreboard players add #total_californium_ore crazy_adventure.data 0
scoreboard players add #total_californium_block crazy_adventure.data 0
scoreboard players add #total_uranium_ore crazy_adventure.data 0
scoreboard players add #total_uranium_block crazy_adventure.data 0
tellraw @s [{"translate": "crazy_adventure.total_uranium_block","color":"gold"},{"score":{"name":"#total_uranium_block","objective":"crazy_adventure.data"},"color":"yellow"}]
tellraw @s [{"translate": "crazy_adventure.total_uranium_ore","color":"gold"},{"score":{"name":"#total_uranium_ore","objective":"crazy_adventure.data"},"color":"yellow"}]
tellraw @s [{"translate": "crazy_adventure.total_californium_block","color":"gold"},{"score":{"name":"#total_californium_block","objective":"crazy_adventure.data"},"color":"yellow"}]
tellraw @s [{"translate": "crazy_adventure.total_californium_ore","color":"gold"},{"score":{"name":"#total_californium_ore","objective":"crazy_adventure.data"},"color":"yellow"}]
tellraw @s [{"translate": "crazy_adventure.vanilla_minecraft_cobblestone","color":"gray"},{"score":{"name":"#total_vanilla_cobblestone","objective":"crazy_adventure.data"},"color":"white"}]
tellraw @s [{"translate": "crazy_adventure.vanilla_minecraft_iron_block","color":"gray"},{"score":{"name":"#total_vanilla_iron_block","objective":"crazy_adventure.data"},"color":"white"}]
tellraw @s [{"translate": "crazy_adventure.vanilla_minecraft_polished_deepslate","color":"gray"},{"score":{"name":"#total_vanilla_polished_deepslate","objective":"crazy_adventure.data"},"color":"white"}]
tellraw @s [{"translate": "crazy_adventure.total_custom_blocks","color":"dark_aqua"},{"score":{"name":"#total_custom_blocks","objective":"crazy_adventure.data"},"color":"aqua"}]

