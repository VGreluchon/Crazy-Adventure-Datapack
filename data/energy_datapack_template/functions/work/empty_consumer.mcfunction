

scoreboard players remove @s energy.storage 50
particle happy_villager ~ ~ ~ 1 1 1 0 100

#optional: playsound energy_datapack_template:empty_consumer block @a[distance=..10,tag=!energy_datapack_template.ps.empty_consumer] ~ ~ ~ 0.25
#optional: tag @a[distance=..10] add energy_datapack_template.ps.empty_consumer
