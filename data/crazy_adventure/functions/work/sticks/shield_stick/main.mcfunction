particle happy_villager ~ ~ ~ ~1 ~1 ~1 1 20
item modify entity @s weapon.mainhand crazy_adventure:shield_stick
effect give @s resistance 5 2 true
effect give @s regeneration 5 3 true

scoreboard players remove @s crazy_adventure.radiation 100
scoreboard players set @s crazy_adventure.cooldown 300

scoreboard players set #success crazy_adventure.data 0
execute store success score #success crazy_adventure.data if entity @s[nbt={SelectedItem:{tag:{crazy_adventure:{shield_stick:1b},Damage:100}}}]
execute if score #success crazy_adventure.data matches 1 run particle block warped_fungus ~ ~ ~ ~1 ~1 ~1 1 20
execute if score #success crazy_adventure.data matches 1 run playsound entity.item.break player @s
execute if score #success crazy_adventure.data matches 1 run item replace entity @s weapon with air
