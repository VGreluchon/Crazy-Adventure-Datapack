
loot spawn ~ ~ ~ loot smithed.crafter:blocks/table

loot spawn ~ ~ ~ loot crazy_adventure:i/template_ore
loot spawn ~ ~ ~ loot crazy_adventure:i/template_ingot
loot spawn ~ ~ ~ loot crazy_adventure:i/template_block
loot spawn ~ ~ ~ loot crazy_adventure:i/raw_template

loot spawn ~ ~ ~ loot crazy_adventure:i/template_helmet
loot spawn ~ ~ ~ loot crazy_adventure:i/template_chestplate
loot spawn ~ ~ ~ loot crazy_adventure:i/template_leggings
loot spawn ~ ~ ~ loot crazy_adventure:i/template_boots
loot spawn ~ ~ ~ loot crazy_adventure:i/template_sword
loot spawn ~ ~ ~ loot crazy_adventure:i/template_pickaxe
loot spawn ~ ~ ~ loot crazy_adventure:i/template_axe
loot spawn ~ ~ ~ loot crazy_adventure:i/template_shovel
loot spawn ~ ~ ~ loot crazy_adventure:i/template_hoe

loot spawn ~ ~ ~ loot crazy_adventure:i/template_battery
loot spawn ~ ~ ~ loot crazy_adventure:i/empty_generator
loot spawn ~ ~ ~ loot crazy_adventure:i/empty_consumer

execute as @e[type=item,dx=0,dy=0,dz=0] run data modify entity @s PickupDelay set value 2s
execute as @e[type=item,dx=0,dy=0,dz=0] run data modify entity @s Motion set value [0.0,0.0,0.0]

