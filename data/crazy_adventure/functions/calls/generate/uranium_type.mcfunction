
scoreboard players set #success crazy_adventure.data 0
execute store success score #success crazy_adventure.data if block ~ ~ ~ #deepslate_ore_replaceables run function crazy_adventure:place/uranium_ore/main
execute if score #success crazy_adventure.data matches 0 run function crazy_adventure:place/uranium_ore/main
