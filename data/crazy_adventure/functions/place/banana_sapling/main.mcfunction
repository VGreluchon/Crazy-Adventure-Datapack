
	setblock ~ ~ ~ jungle_sapling

	scoreboard players set @s crazy_adventure.working 0


	summon glow_item_frame ~ ~ ~ {ItemRotation:0b,Tags:["global.ignore","global.ignore.kill","smithed.block","crazy_adventure.destroyer","crazy_adventure.destroy_jungle_sapling","crazy_adventure.banana_sapling"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b}

	execute unless block ~ ~-1 ~ dirt unless block ~ ~-1 ~ grass_block unless block ~ ~-1 ~ podzol unless block ~ ~-1 ~ coarse_dirt unless block ~ ~-1 ~ rooted_dirt run loot spawn ~ ~ ~ loot crazy_adventure:i/banana_sapling
	execute unless block ~ ~-1 ~ dirt unless block ~ ~-1 ~ grass_block unless block ~ ~-1 ~ podzol unless block ~ ~-1 ~ coarse_dirt unless block ~ ~-1 ~ rooted_dirt run fill ~ ~ ~ ~ ~ ~ air

	execute if block ~1 ~ ~ jungle_sapling run loot spawn ~ ~ ~ loot crazy_adventure:i/banana_sapling
	execute if block ~1 ~ ~ jungle_sapling run fill ~ ~ ~ ~ ~ ~ air
	execute if block ~-1 ~ ~ jungle_sapling run loot spawn ~ ~ ~ loot crazy_adventure:i/banana_sapling
	execute if block ~-1 ~ ~ jungle_sapling run fill ~ ~ ~ ~ ~ ~ air
	execute if block ~ ~ ~1 jungle_sapling run loot spawn ~ ~ ~ loot crazy_adventure:i/banana_sapling
	execute if block ~ ~ ~1 jungle_sapling run fill ~ ~ ~ ~ ~ ~ air
	execute if block ~ ~ ~-1 jungle_sapling run loot spawn ~ ~ ~ loot crazy_adventure:i/banana_sapling
	execute if block ~ ~ ~-1 jungle_sapling run fill ~ ~ ~ ~ ~ ~ air