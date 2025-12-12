
#> crazy_adventure:custom_blocks/shield_stick_charger/place_main
#
# @within	crazy_adventure:custom_blocks/place
#

tag @s add crazy_adventure.placer
function crazy_adventure:custom_blocks/get_rotation
setblock ~ ~ ~ air strict
execute if score #rotation crazy_adventure.data matches 1 run setblock ~ ~ ~ minecraft:furnace[facing=north]{"CustomName": {"translate": "crazy_adventure.shield_stick_charger"}}
execute if score #rotation crazy_adventure.data matches 2 run setblock ~ ~ ~ minecraft:furnace[facing=east]{"CustomName": {"translate": "crazy_adventure.shield_stick_charger"}}
execute if score #rotation crazy_adventure.data matches 3 run setblock ~ ~ ~ minecraft:furnace[facing=south]{"CustomName": {"translate": "crazy_adventure.shield_stick_charger"}}
execute if score #rotation crazy_adventure.data matches 4 run setblock ~ ~ ~ minecraft:furnace[facing=west]{"CustomName": {"translate": "crazy_adventure.shield_stick_charger"}}
execute align xyz positioned ~.5 ~.5 ~.5 summon item_display at @s run function crazy_adventure:custom_blocks/shield_stick_charger/place_secondary
tag @s remove crazy_adventure.placer

# Increment count scores
scoreboard players add #total_custom_blocks crazy_adventure.data 1
scoreboard players add #total_vanilla_furnace crazy_adventure.data 1
scoreboard players add #total_shield_stick_charger crazy_adventure.data 1

