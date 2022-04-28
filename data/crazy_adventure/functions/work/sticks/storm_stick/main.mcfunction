tag @s add crazy_adventure.user
execute anchored eyes positioned ^ ^ ^.2 run function crazy_adventure:work/sticks/storm_stick/ray_cast

execute if entity @s[tag=!crazy_adventure.stop] run playsound minecraft:block.note_block.snare ambient @s ~ ~ ~ 1 0.5
execute if entity @s[tag=crazy_adventure.stop] run item modify entity @s weapon.mainhand crazy_adventure:storm_stick
scoreboard players remove @s[tag=crazy_adventure.stop] crazy_adventure.radiation 60
scoreboard players reset @s crazy_adventure.cooldown
tag @s remove crazy_adventure.stop
tag @s remove crazy_adventure.user
