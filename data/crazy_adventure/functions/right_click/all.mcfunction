
execute if score @s crazy_adventure.cooldown matches 5 if score @s crazy_adventure.right_click matches 1.. if entity @s[nbt={SelectedItem:{tag:{crazy_adventure:{storm_stick:1b}}}}] if score @s crazy_adventure.radiation matches 60.. run function crazy_adventure:work/sticks/storm_stick/main

scoreboard players set @s crazy_adventure.right_click 0
