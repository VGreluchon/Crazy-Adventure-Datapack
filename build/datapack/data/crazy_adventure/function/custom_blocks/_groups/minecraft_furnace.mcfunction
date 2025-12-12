
#> crazy_adventure:custom_blocks/_groups/minecraft_furnace
#
# @executed	as @e[type=item_display,tag=...,predicate=!crazy_adventure:check_vanilla_blocks] & at @s
#
# @within	crazy_adventure:custom_blocks/destroy
#

execute if score #total_storm_stick_charger crazy_adventure.data matches 1.. if entity @s[tag=crazy_adventure.storm_stick_charger] run function crazy_adventure:custom_blocks/storm_stick_charger/destroy
execute if score #total_fireball_stick_charger crazy_adventure.data matches 1.. if entity @s[tag=crazy_adventure.fireball_stick_charger] run function crazy_adventure:custom_blocks/fireball_stick_charger/destroy
execute if score #total_shield_stick_charger crazy_adventure.data matches 1.. if entity @s[tag=crazy_adventure.shield_stick_charger] run function crazy_adventure:custom_blocks/shield_stick_charger/destroy
execute if score #total_fertilizer_stick_charger crazy_adventure.data matches 1.. if entity @s[tag=crazy_adventure.fertilizer_stick_charger] run function crazy_adventure:custom_blocks/fertilizer_stick_charger/destroy

