
#Storage copy
data modify storage crazy_adventure:main Items set from block ~ ~ ~ Items
data modify storage crazy_adventure:main Item set from storage crazy_adventure:main Items[{Slot:19b}]


#Update visual and define which slot is missing
scoreboard players set #slot crazy_adventure.data 0
function crazy_adventure:work/upgrader/uranium_upgrader/drop_gui

function crazy_adventure:visual/uranium_upgrader


#Case for Item
scoreboard players set #book crazy_adventure.data 0
execute if score @s energy.storage matches 500.. if data storage crazy_adventure:main Item store success score #book crazy_adventure.data if data storage crazy_adventure:main Items[{Slot:20b}].tag.crazy_adventure.uranium_book
execute if score #book crazy_adventure.data matches 1 if data storage crazy_adventure:main Item.tag.crazy_adventure.uranium_sword run function crazy_adventure:work/upgrader/uranium_upgrader/uranium_sword
execute if score #book crazy_adventure.data matches 0 if data storage crazy_adventure:main Item.tag.crazy_adventure.uranium_sword if data storage crazy_adventure:main Items[{Slot:20b}].tag.crazy_adventure.uranium_book run function crazy_adventure:work/upgrader/uranium_upgrader/uranium_sword_2
execute if score #book crazy_adventure.data matches 0 if data storage crazy_adventure:main Item.tag.crazy_adventure.uranium_sword unless data storage crazy_adventure:main Items[{Slot:20b}].tag.crazy_adventure.uranium_book run function crazy_adventure:work/upgrader/uranium_upgrader/uranium_sword_3


#Storage dump
data remove storage crazy_adventure:main Items
data remove storage crazy_adventure:main Item

