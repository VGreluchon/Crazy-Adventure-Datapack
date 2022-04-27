
setblock ~ ~ ~ jungle_sapling

scoreboard players set @s crazy_adventure.working 0

summon glow_item_frame ~ ~ ~ {ItemRotation:0b,Tags:["global.ignore","global.ignore.kill","smithed.block","crazy_adventure.destroyer","crazy_adventure.destroy_jungle_sapling","crazy_adventure.banana_sapling"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b}
