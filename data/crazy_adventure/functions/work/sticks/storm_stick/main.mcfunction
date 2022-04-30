tag @s add crazy_adventure.user
execute anchored eyes positioned ^ ^ ^.2 run function crazy_adventure:work/sticks/storm_stick/ray_cast

execute if entity @s[tag=!crazy_adventure.stop] run playsound minecraft:block.note_block.snare ambient @s ~ ~ ~ 1 0.5
execute if entity @s[tag=crazy_adventure.stop] run item modify entity @s weapon.mainhand crazy_adventure:storm_stick
scoreboard players remove @s[tag=crazy_adventure.stop] crazy_adventure.radiation 60
scoreboard players set @s crazy_adventure.cooldown 80
tag @s remove crazy_adventure.stop
tag @s remove crazy_adventure.user

scoreboard players set #success crazy_adventure.data 0
execute store success score #success crazy_adventure.data if entity @s[nbt={SelectedItem:{tag:{crazy_adventure:{storm_stick:1b},Damage:100}}}]
execute if score #success crazy_adventure.data matches 1 run particle block warped_fungus ~ ~ ~ ~1 ~1 ~1 1 20
execute if score #success crazy_adventure.data matches 1 run playsound entity.item.break player @s
execute if score #success crazy_adventure.data matches 1 run item replace entity @s weapon with air