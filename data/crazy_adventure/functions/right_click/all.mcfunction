scoreboard players add @s crazy_adventure.cooldown 0
execute if score @s crazy_adventure.cooldown matches 0 if score @s crazy_adventure.right_click matches 1.. if entity @s[nbt={SelectedItem:{tag:{crazy_adventure:{storm_stick:1b}}}}] if score @s crazy_adventure.radiation matches 60.. run function crazy_adventure:work/sticks/storm_stick/main
execute if score @s crazy_adventure.cooldown matches 0 if score @s crazy_adventure.right_click matches 1.. if entity @s[nbt={SelectedItem:{tag:{crazy_adventure:{shield_stick:1b}}}}] if score @s crazy_adventure.radiation matches 100.. run function crazy_adventure:work/sticks/shield_stick/main
execute if score @s crazy_adventure.cooldown matches 0 if score @s crazy_adventure.right_click matches 1.. if entity @s[nbt={SelectedItem:{tag:{crazy_adventure:{fireball_stick:1b}}}}] if score @s crazy_adventure.radiation matches 60.. run function crazy_adventure:work/sticks/fireball_stick/main
execute if score @s crazy_adventure.cooldown matches ..6 run particle dust 0 0 0 1 ~ ~ ~ 0.5 0.5 0.5 0 20
scoreboard players set @s crazy_adventure.right_click 0
