particle happy_villager ~ ~ ~ ~1 ~1 ~1 1 20
item modify entity @s weapon.mainhand crazy_adventure:fertilizer_stick


#Vanilla seeds
scoreboard players set #count_y crazy_adventure.data 21
execute positioned ~10 ~10 ~10 run function crazy_adventure:work/sticks/fertilizer_stick/layer_y

scoreboard players reset #count_x
scoreboard players reset #count_y
scoreboard players reset #count_z

scoreboard players remove @s crazy_adventure.radiation 50
scoreboard players set @s crazy_adventure.cooldown 20


scoreboard players set #success crazy_adventure.data 0
execute store success score #success crazy_adventure.data if entity @s[nbt={SelectedItem:{tag:{crazy_adventure:{fertilizer_stick:1b},Damage:100}}}]
execute if score #success crazy_adventure.data matches 1 run particle block warped_fungus ~ ~ ~ ~1 ~1 ~1 1 20
execute if score #success crazy_adventure.data matches 1 run playsound entity.item.break player @s
execute if score #success crazy_adventure.data matches 1 run item replace entity @s weapon with air
