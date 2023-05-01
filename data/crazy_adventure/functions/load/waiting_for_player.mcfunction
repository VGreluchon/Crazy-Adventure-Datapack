
# Waiting for a player
execute unless entity @p run schedule function crazy_adventure:load/waiting_for_player 1t replace

# Check if the game version is supported & Check SimplEnergy version
execute if entity @p unless score #game_version simplenergy.data matches 3337.. run scoreboard players set #load_error crazy_adventure.data 1
execute if score #game_version simplenergy.data matches 1.. unless score #SimplEnergyLoaded load.status matches 1 run scoreboard players set #load_error crazy_adventure.data 2
execute if score #game_version simplenergy.data matches 1.. if score #SimplEnergyLoaded load.status matches 1 unless score SimplEnergy load.status matches 2000..2009 run scoreboard players set #load_error crazy_adventure.data 3

# Decode error
execute if score #load_error crazy_adventure.data matches 1 run tellraw @a {"text":"Crazy Adventure Error: This version is made for Minecraft 1.19+.","color":"red"}
execute if score #load_error crazy_adventure.data matches 2 run tellraw @a {"text":"Crazy Adventure Error: SimplEnergy v2.0.x is missing, click [here] to download","italic":false,"color":"red","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/simplenergy/"}}
execute if score #load_error crazy_adventure.data matches 3 run tellraw @a {"text":"Crazy Adventure Error: SimplEnergy v2.0.x is required, click [here] to download","italic":false,"color":"red","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/simplenergy/"}}
execute if score #load_error crazy_adventure.data matches 4 run tellraw @a {"text":"Crazy Adventure Error: Libraries are missing\nplease download the right Crazy Adventure datapack\nor download each of these libraries one by one:","color":"red"}

# Load Crazy Adventure
execute if score #game_version simplenergy.data matches 1.. if score #load_error crazy_adventure.data matches 0 run function crazy_adventure:load/confirm_load

