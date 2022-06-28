summon fireball ~ ~ ~ {ExplosionPower:3,Tags:["crazy_adventure.fireball"]}
execute as @e[type=fireball,tag=crazy_adventure.fireball] at @s run function crazy_adventure:work/battle_boss/random_position
execute as @e[type=fireball,tag=crazy_adventure.fireball] at @s run function crazy_adventure:work/battle_boss/launch_meteor