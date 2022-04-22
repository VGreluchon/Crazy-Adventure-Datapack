
#Timer
	scoreboard players add #tick_2 crazy_adventure.data 1
	scoreboard players add #second crazy_adventure.data 1
	execute if score #tick_2 crazy_adventure.data matches 2.. run function crazy_adventure:tick_2
	execute if score #second crazy_adventure.data matches 20.. run function crazy_adventure:tick_second

#Others
	#execute ...
