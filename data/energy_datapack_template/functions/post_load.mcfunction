
##Called by function tag #load:post_load

execute store result score #game_version load.status run data get entity @r DataVersion

execute store success score #simplenergy_loaded energy_datapack_template.data run scoreboard players get SimplEnergy load.status
execute if score #simplenergy_loaded energy_datapack_template.data matches 0 run scoreboard players set #simplenergy_missing energy_datapack_template.data 1
execute unless score SimplEnergy load.status matches 1.. run scoreboard players set #simplenergy_missing energy_datapack_template.data 1

execute unless score #game_version load.status matches 2975.. run tellraw @a {"text":"Energy Datapack Template Error: This version is only available with Minecraft 1.18.2+.","italic":false,"color":"red"}
execute if score #simplenergy_missing energy_datapack_template.data matches 1 run tellraw @a {"text":"Energy Datapack Template Error: SimplEnergy v1.8.0+ is missing, click [here] to download","italic":false,"color":"red","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/simplenergy/"}}
execute unless score #simplenergy_missing energy_datapack_template.data matches 1 unless score SimplEnergy load.status matches 1080.. run tellraw @a {"text":"Energy Datapack Template Error: SimplEnergy v1.8.0+ is required, click [here] to download","italic":false,"color":"red","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/simplenergy/"}}
execute if score #game_version load.status matches 2975.. if score SimplEnergy load.status matches 1080.. run tellraw @a[tag=convention.debug] {"text":"[Loaded Energy Datapack Template v1.0.0]","italic":false,"color":"green"}

scoreboard players reset #simplenergy_loaded energy_datapack_template.data
scoreboard players reset #simplenergy_missing energy_datapack_template.data

execute unless entity @a run schedule function energy_datapack_template:post_load 1t replace
