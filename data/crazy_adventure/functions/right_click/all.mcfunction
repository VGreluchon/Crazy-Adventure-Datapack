
advancement revoke @s only crazy_adventure:technical/right_click

scoreboard players add @s crazy_adventure.cooldown 0
execute if score @s crazy_adventure.cooldown matches 0 if score @s crazy_adventure.right_click matches 1.. if data entity @s SelectedItem.tag.crazy_adventure.storm_stick if score @s crazy_adventure.radiation matches 80.. run function crazy_adventure:work/sticks/storm_stick/main
execute if score @s crazy_adventure.cooldown matches 0 if score @s crazy_adventure.right_click matches 1.. if data entity @s SelectedItem.tag.crazy_adventure.shield_stick if score @s crazy_adventure.radiation matches 100.. run function crazy_adventure:work/sticks/shield_stick/main
execute if score @s crazy_adventure.cooldown matches 0 if score @s crazy_adventure.right_click matches 1.. if data entity @s SelectedItem.tag.crazy_adventure.fireball_stick if score @s crazy_adventure.radiation matches 80.. run function crazy_adventure:work/sticks/fireball_stick/main
execute if score @s crazy_adventure.cooldown matches 0 if score @s crazy_adventure.right_click matches 1.. if data entity @s SelectedItem.tag.crazy_adventure.fertilizer_stick if score @s crazy_adventure.radiation matches 50.. run function crazy_adventure:work/sticks/fertilizer_stick/main
execute if score @s crazy_adventure.cooldown matches ..300 if data entity @s SelectedItem.tag.crazy_adventure run particle dust 0 0 0 1 ~ ~1 ~ 0.5 0.5 0.5 0 20
scoreboard players set @s crazy_adventure.right_click 0
