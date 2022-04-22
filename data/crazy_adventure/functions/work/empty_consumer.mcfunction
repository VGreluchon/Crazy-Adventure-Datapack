

scoreboard players remove @s energy.storage 50
particle happy_villager ~ ~ ~ 1 1 1 0 100

#optional: playsound crazy_adventure:empty_consumer block @a[distance=..10,tag=!crazy_adventure.ps.empty_consumer] ~ ~ ~ 0.25
#optional: tag @a[distance=..10] add crazy_adventure.ps.empty_consumer
