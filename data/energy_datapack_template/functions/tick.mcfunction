
#Timer
	scoreboard players add #tick_2 energy_datapack_template.data 1
	scoreboard players add #second energy_datapack_template.data 1
	execute if score #tick_2 energy_datapack_template.data matches 2.. run function energy_datapack_template:tick_2
	execute if score #second energy_datapack_template.data matches 20.. run function energy_datapack_template:tick_second

#Others
	#execute ...
