
scoreboard players set #success crazy_adventure.data 0
execute if score #success crazy_adventure.data matches 0 store success score #success crazy_adventure.data if block ~ ~ ~ beetroots[age=3]
execute if score #success crazy_adventure.data matches 0 store success score #success crazy_adventure.data if block ~ ~ ~ beetroots[age=2] run setblock ~ ~ ~ beetroots[age=3]
execute if score #success crazy_adventure.data matches 0 store success score #success crazy_adventure.data if block ~ ~ ~ beetroots[age=1] run setblock ~ ~ ~ beetroots[age=3]
execute if score #success crazy_adventure.data matches 0 store success score #success crazy_adventure.data if block ~ ~ ~ beetroots[age=0] run setblock ~ ~ ~ beetroots[age=2]