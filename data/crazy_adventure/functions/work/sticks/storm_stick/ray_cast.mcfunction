execute unless block ~ ~ ~ #simplenergy:non_solid run tag @s add crazy_adventure.stop
execute if entity @e[dx=0,dy=3,dz=0,distance=..3,tag=!crazy_adventure.user,tag=!global.ignore,tag=!global.ignore.kill,type=!item,type=!#energy:valid_block_entities] run tag @s add crazy_adventure.stop
execute if entity @s[tag=crazy_adventure.stop] run function crazy_adventure:work/sticks/storm_stick/lightning
execute if entity @s[tag=!crazy_adventure.stop,distance=..20] positioned ^ ^ ^.2 run function crazy_adventure:work/sticks/storm_stick/ray_cast
