
scoreboard objectives remove energy_datapack_template.config
scoreboard objectives remove energy_datapack_template.data

data remove storage energy_datapack_template:main all
data remove storage energy_datapack_template:main temp

tp @e[tag=energy_datapack_template.destroyer] 0 -1000 0
kill @e[tag=energy_datapack_template.destroyer]

clear @a #energy_datapack_template:items{energy_datapack_template:{}}
