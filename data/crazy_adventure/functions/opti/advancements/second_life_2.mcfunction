data modify storage crazy_adventure:main Lore set value []
data modify storage crazy_adventure:main LoreTemp set from entity @s SelectedItem.tag.display.Lore

execute if data storage crazy_adventure:main LoreTemp[0] run function crazy_adventure:opti/advancements/second_life_3

item modify entity @s weapon crazy_adventure:remove_second_life

data remove storage crazy_adventure:main temp
data remove storage crazy_adventure:main Lore
data remove storage crazy_adventure:main LoreTemp