bossbar remove crazy_adventure:battle_boss
execute positioned ~ ~-5 ~ as @e[type=glow_item_frame,tag=crazy_adventure.boss_altar,distance=..3] at @s run function crazy_adventure:work/battle_boss/boss_altar
summon firework_rocket ~ ~ ~ {LifeTime:2,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1,Colors:[I;2437522],FadeColors:[I;6719955]}],Flight:1}}}}
summon minecraft:experience_orb ~ ~ ~ {Value:100}
summon minecraft:experience_orb ~ ~ ~ {Value:100}
summon minecraft:experience_orb ~ ~ ~ {Value:100}
summon minecraft:experience_orb ~ ~ ~ {Value:100}
summon minecraft:experience_orb ~ ~ ~ {Value:100}
kill @s
