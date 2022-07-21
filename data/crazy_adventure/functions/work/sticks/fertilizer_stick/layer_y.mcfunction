scoreboard players remove #count_y crazy_adventure.data 1
scoreboard players set #count_x crazy_adventure.data 21
function crazy_adventure:work/sticks/fertilizer_stick/layer_x
execute if score #count_y crazy_adventure.data matches 1.. positioned ~ ~-1 ~ run function crazy_adventure:work/sticks/fertilizer_stick/layer_y