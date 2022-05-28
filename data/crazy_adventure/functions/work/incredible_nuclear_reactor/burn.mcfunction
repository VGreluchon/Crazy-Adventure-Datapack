#Consume a uranium Core
scoreboard players set @s crazy_adventure.working 20
execute store result block ~ ~ ~ Items[{Slot:13b}].Count byte -0.999 run data get storage crazy_adventure:main Items[{Slot:13b}].Count -1


#Execute 
execute if score @s crazy_adventure.water matches ..19 run summon tnt ~ ~ ~

scoreboard players remove @s crazy_adventure.water 20