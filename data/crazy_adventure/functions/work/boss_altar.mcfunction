kill @s

summon ravager ~ ~5 ~ {NoAI:1b,NoGravity:1b,Silent:1b,Passengers:[{id:"minecraft:armor_stand",Tags:["crazy_adventure.battle_boss","crazy_adventure.new","crazy_adventure.custom_entity"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Small:1b,ArmorItems:[{},{},{},{id:"golden_hoe",Count:1b,tag:{CustomModelData:4220002}}]}],DeathLootTable:"crazy_adventure:entities/battle_boss",Health:400.0f,Attributes:[{Name:"generic.max_health",Base:400d}],Tags:["crazy_adventure.battle_boss","crazy_adventure.new","crazy_adventure.battle_boss_check"],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}
scoreboard players set @e[tag=crazy_adventure.battle_boss] crazy_adventure.cooldown 5
playsound entity.firework_rocket.twinkle player @a[distance=..15] ~ ~ ~ 1.0 1 0.1
particle firework ~ ~ ~ 0.5 0.5 0.5 2 50

bossbar add crazy_adventure:battle_boss "BATTLE BUSS"
bossbar set crazy_adventure:battle_boss color blue
bossbar set crazy_adventure:battle_boss max 400
bossbar set crazy_adventure:battle_boss value 400
bossbar set crazy_adventure:battle_boss style notched_10
bossbar set crazy_adventure:battle_boss players @a[distance=..40]
bossbar set crazy_adventure:battle_boss visible true

execute positioned ~ ~-1 ~ run tag @e[tag=crazy_adventure.boss_altar,distance=..1] add crazy_adventure.spawned