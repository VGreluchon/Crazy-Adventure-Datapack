

summon fireball ~ ~ ~ {ExplosionPower:3,Tags:["crazy_adventure.fireball"]}
tp @e[type=fireball,tag=crazy_adventure.fireball] @s
execute as @e[type=fireball,tag=crazy_adventure.fireball] run tp @s ^ ^1.55 ^
execute as @e[type=fireball,tag=crazy_adventure.fireball] at @s run function crazy_adventure:work/sticks/fireball_stick/launch_fireball


execute if entity @s[tag=crazy_adventure.stop] run item modify entity @s weapon.mainhand crazy_adventure:fireball_stick
scoreboard players remove @s[tag=crazy_adventure.stop] crazy_adventure.radiation 60
scoreboard players set @s crazy_adventure.cooldown 80


scoreboard players set #success crazy_adventure.data 0
execute store success score #success crazy_adventure.data if entity @s[nbt={SelectedItem:{tag:{crazy_adventure:{fireball_stick:1b},Damage:100}}}]
execute if score #success crazy_adventure.data matches 1 run particle block warped_fungus ~ ~ ~ ~1 ~1 ~1 1 20
execute if score #success crazy_adventure.data matches 1 run playsound entity.item.break player @s
execute if score #success crazy_adventure.data matches 1 run item replace entity @s weapon with air
