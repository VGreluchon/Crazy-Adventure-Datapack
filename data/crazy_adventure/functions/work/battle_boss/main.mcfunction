#Score initialisation
scoreboard players set #temp crazy_adventure.data 0
scoreboard players set #success crazy_adventure.data 0
scoreboard players set #hurt_time crazy_adventure.data 0
scoreboard players operation #predicate crazy_adventure.data = @s crazy_adventure.id
execute store success score #success crazy_adventure.data run data modify storage crazy_adventure:main temp set from entity @e[type=ravager,tag=crazy_adventure.battle_boss,dx=0,dy=0,dz=0,predicate=crazy_adventure:equals_id,limit=1]
execute if score #success crazy_adventure.data matches 1 store result score #hurt_time crazy_adventure.data run data get storage crazy_adventure:main temp.HurtTime

#Update model depending on HurtTime & Applying entity rotation
execute if entity @s[tag=crazy_adventure.hurt] if score #hurt_time crazy_adventure.data matches 0 run scoreboard players set #temp crazy_adventure.data 1
execute if entity @s[tag=!crazy_adventure.hurt] unless score #hurt_time crazy_adventure.data matches 0 run scoreboard players set #temp crazy_adventure.data 2
execute if score #temp crazy_adventure.data matches 1 run tag @s remove crazy_adventure.hurt
execute if score #temp crazy_adventure.data matches 1 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 4220002
execute if score #temp crazy_adventure.data matches 2 run tag @s add crazy_adventure.hurt
execute if score #temp crazy_adventure.data matches 2 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 4220003
execute if score #success crazy_adventure.data matches 1 run data modify entity @s Rotation set from storage crazy_adventure:main temp.Rotation

#Spells
execute if score @s crazy_adventure.cooldown matches 1.. run scoreboard players remove @s crazy_adventure.cooldown 1
execute if score @s crazy_adventure.cooldown matches 35 run function crazy_adventure:work/battle_boss/falling_meteor
execute if score @s crazy_adventure.cooldown matches 33 run function crazy_adventure:work/battle_boss/falling_meteor
execute if score @s crazy_adventure.cooldown matches 31 run function crazy_adventure:work/battle_boss/falling_meteor
execute if score @s crazy_adventure.cooldown matches 25 run function crazy_adventure:work/battle_boss/spawn_mobs2
execute if score @s crazy_adventure.cooldown matches 15 run function crazy_adventure:work/battle_boss/levitation
execute if score @s crazy_adventure.cooldown matches 11 run function crazy_adventure:work/battle_boss/boom
execute if score @s crazy_adventure.cooldown matches 0 run function crazy_adventure:work/battle_boss/spawn_mobs

execute store result bossbar crazy_adventure:battle_boss value run data get entity @e[type=ravager,tag=crazy_adventure.battle_boss,limit=1] Health
execute unless entity @e[type=ravager,tag=crazy_adventure.battle_boss,distance=..2] run function crazy_adventure:work/battle_boss/death