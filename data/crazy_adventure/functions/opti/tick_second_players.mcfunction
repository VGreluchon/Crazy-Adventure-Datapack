data modify storage crazy_adventure:main Inventory set from entity @s Inventory
execute if data storage crazy_adventure:main Inventory[{Slot:103b,tag:{crazy_adventure:{cave_helmet:1b}}}] run effect give @s night_vision 2 1 true

tag @s remove crazy_adventure.ps.empty_generator
tag @s remove crazy_adventure.ps.empty_consumer
