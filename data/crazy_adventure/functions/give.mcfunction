
loot spawn ~ ~ ~ loot smithed.crafter:blocks/table

loot spawn ~ ~ ~ loot crazy_adventure:i/uranium_ore
loot spawn ~ ~ ~ loot crazy_adventure:i/uranium_ingot
loot spawn ~ ~ ~ loot crazy_adventure:i/uranium_block
loot spawn ~ ~ ~ loot crazy_adventure:i/raw_uranium
loot spawn ~ ~ ~ loot crazy_adventure:i/uranium_core
loot spawn ~ ~ ~ loot crazy_adventure:i/radioactive_waste
loot spawn ~ ~ ~ loot crazy_adventure:i/radioactive_waste_barrel

loot spawn ~ ~ ~ loot crazy_adventure:i/cave_helmet

loot spawn ~ ~ ~ loot crazy_adventure:i/uranium_battery
loot spawn ~ ~ ~ loot crazy_adventure:i/nuclear_reactor
loot spawn ~ ~ ~ loot crazy_adventure:i/ore_extractor_lvl_1
loot spawn ~ ~ ~ loot crazy_adventure:i/ore_extractor_lvl_2
loot spawn ~ ~ ~ loot crazy_adventure:i/ore_extractor_lvl_3
loot spawn ~ ~ ~ loot crazy_adventure:i/ore_extractor_lvl_4

execute as @e[type=item,dx=0,dy=0,dz=0] run data modify entity @s PickupDelay set value 2s
execute as @e[type=item,dx=0,dy=0,dz=0] run data modify entity @s Motion set value [0.0,0.0,0.0]

