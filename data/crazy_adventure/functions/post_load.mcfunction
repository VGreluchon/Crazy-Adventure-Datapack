
##Called by function tag #load:post_load

execute store result score #game_version load.status run data get entity @r DataVersion

execute store success score #simplenergy_loaded crazy_adventure.data run scoreboard players get SimplEnergy load.status
execute if score #simplenergy_loaded crazy_adventure.data matches 0 run scoreboard players set #simplenergy_missing crazy_adventure.data 1
execute unless score SimplEnergy load.status matches 1.. run scoreboard players set #simplenergy_missing crazy_adventure.data 1

execute unless score #game_version load.status matches 2975.. run tellraw @a {"text":"Crazy Adventure Error: This version is only available with Minecraft 1.19+.","italic":false,"color":"red"}
execute if score #simplenergy_missing crazy_adventure.data matches 1 run tellraw @a {"text":"Crazy Adventure Error: SimplEnergy v1.9.x is missing, click [here] to download","italic":false,"color":"red","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/simplenergy/"}}
execute unless score #simplenergy_missing crazy_adventure.data matches 1 unless score SimplEnergy load.status matches 1090..1099 run tellraw @a {"text":"Crazy Adventure Error: SimplEnergy v1.9.x is required, click [here] to download","italic":false,"color":"red","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/simplenergy/"}}
execute if score #game_version load.status matches 2975.. if score SimplEnergy load.status matches 1090..1099 run tellraw @a[tag=convention.debug] {"text":"[Loaded Crazy Adventure v1.2.0]","italic":false,"color":"green"}

scoreboard players reset #simplenergy_loaded crazy_adventure.data
scoreboard players reset #simplenergy_missing crazy_adventure.data

execute unless entity @a run schedule function crazy_adventure:post_load 1t replace
