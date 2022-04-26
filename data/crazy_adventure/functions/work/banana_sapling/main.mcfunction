
particle dust 0.933 1 0 1 ~ ~ ~ 0.5 0.5 0.5 0 20
scoreboard players add @s crazy_adventure.working 1


execute unless block ~ ~-1 ~ dirt unless block ~ ~-1 ~ grass_block unless block ~ ~-1 ~ podzol unless block ~ ~-1 ~ coarse_dirt unless block ~ ~-1 ~ rooted_dirt run kill @s 
execute if score @s crazy_adventure.working matches 600 run placefeature crazy_adventure:banana_tree