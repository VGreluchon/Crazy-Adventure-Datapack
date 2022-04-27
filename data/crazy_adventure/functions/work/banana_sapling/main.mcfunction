

	scoreboard players add @s crazy_adventure.working 1
	execute if score @s crazy_adventure.working matches 1..100 run particle dust 0.933 1 0 1 ~ ~ ~ 0.5 0.5 0.5 0 2
	execute if score @s crazy_adventure.working matches 101..200 run particle dust 0.933 1 0 1 ~ ~ ~ 0.5 0.5 0.5 0 4
	execute if score @s crazy_adventure.working matches 201..300 run particle dust 0.933 1 0 1 ~ ~ ~ 0.5 0.5 0.5 0 6
	execute if score @s crazy_adventure.working matches 301..400 run particle dust 0.933 1 0 1 ~ ~ ~ 0.5 0.5 0.5 0 10
	execute if score @s crazy_adventure.working matches 401..500 run particle dust 0.933 1 0 1 ~ ~ ~ 0.5 0.5 0.5 0 15
	execute if score @s crazy_adventure.working matches 501..600 run particle dust 0.933 1 0 1 ~ ~ ~ 0.5 0.5 0.5 0 20

	execute unless block ~ ~-1 ~ dirt unless block ~ ~-1 ~ grass_block unless block ~ ~-1 ~ podzol unless block ~ ~-1 ~ coarse_dirt unless block ~ ~-1 ~ rooted_dirt run loot spawn ~ ~ ~ loot crazy_adventure:i/banana_sapling
	execute unless block ~ ~-1 ~ dirt unless block ~ ~-1 ~ grass_block unless block ~ ~-1 ~ podzol unless block ~ ~-1 ~ coarse_dirt unless block ~ ~-1 ~ rooted_dirt run fill ~ ~ ~ ~ ~ ~ air
	execute if score @s crazy_adventure.working matches 600.. run placefeature crazy_adventure:banana_tree ~ ~1 ~
	execute if score @s crazy_adventure.working matches 600.. run fill ~ ~ ~ ~ ~ ~ jungle_wood