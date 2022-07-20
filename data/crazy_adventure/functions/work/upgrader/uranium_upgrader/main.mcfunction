
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
execute if score #book crazy_adventure.data matches 1 if data storage crazy_adventure:main Item.tag.crazy_adventure.uranium_sword run function crazy_adventure:work/upgrader/uranium_upgrader/uranium_sword/uranium_sword
execute if score #book crazy_adventure.data matches 0 if data storage crazy_adventure:main Item.tag.crazy_adventure.uranium_sword if data storage crazy_adventure:main Items[{Slot:20b}].tag.crazy_adventure.uranium_book run function crazy_adventure:work/upgrader/uranium_upgrader/uranium_sword/uranium_sword_2
execute if score #book crazy_adventure.data matches 0 if data storage crazy_adventure:main Item.tag.crazy_adventure.uranium_sword unless data storage crazy_adventure:main Items[{Slot:20b}].tag.crazy_adventure.uranium_book run function crazy_adventure:work/upgrader/uranium_upgrader/uranium_sword/uranium_sword_3

execute if score #book crazy_adventure.data matches 1 if data storage crazy_adventure:main Item.tag.crazy_adventure.uranium_helmet run function crazy_adventure:work/upgrader/uranium_upgrader/uranium_helmet/uranium_helmet
execute if score #book crazy_adventure.data matches 0 if data storage crazy_adventure:main Item.tag.crazy_adventure.uranium_helmet if data storage crazy_adventure:main Items[{Slot:20b}].tag.crazy_adventure.uranium_book run function crazy_adventure:work/upgrader/uranium_upgrader/uranium_helmet/uranium_helmet_2
execute if score #book crazy_adventure.data matches 0 if data storage crazy_adventure:main Item.tag.crazy_adventure.uranium_helmet unless data storage crazy_adventure:main Items[{Slot:20b}].tag.crazy_adventure.uranium_book run function crazy_adventure:work/upgrader/uranium_upgrader/uranium_helmet/uranium_helmet_3

execute if score #book crazy_adventure.data matches 1 if data storage crazy_adventure:main Item.tag.crazy_adventure.uranium_chestplate run function crazy_adventure:work/upgrader/uranium_upgrader/uranium_chestplate/uranium_chestplate
execute if score #book crazy_adventure.data matches 0 if data storage crazy_adventure:main Item.tag.crazy_adventure.uranium_chestplate if data storage crazy_adventure:main Items[{Slot:20b}].tag.crazy_adventure.uranium_book run function crazy_adventure:work/upgrader/uranium_upgrader/uranium_chestplate/uranium_chestplate_2
execute if score #book crazy_adventure.data matches 0 if data storage crazy_adventure:main Item.tag.crazy_adventure.uranium_chestplate unless data storage crazy_adventure:main Items[{Slot:20b}].tag.crazy_adventure.uranium_book run function crazy_adventure:work/upgrader/uranium_upgrader/uranium_chestplate/uranium_chestplate_3

execute if score #book crazy_adventure.data matches 1 if data storage crazy_adventure:main Item.tag.crazy_adventure.uranium_leggings run function crazy_adventure:work/upgrader/uranium_upgrader/uranium_leggings/uranium_leggings
execute if score #book crazy_adventure.data matches 0 if data storage crazy_adventure:main Item.tag.crazy_adventure.uranium_leggings if data storage crazy_adventure:main Items[{Slot:20b}].tag.crazy_adventure.uranium_book run function crazy_adventure:work/upgrader/uranium_upgrader/uranium_leggings/uranium_leggings_2
execute if score #book crazy_adventure.data matches 0 if data storage crazy_adventure:main Item.tag.crazy_adventure.uranium_leggings unless data storage crazy_adventure:main Items[{Slot:20b}].tag.crazy_adventure.uranium_book run function crazy_adventure:work/upgrader/uranium_upgrader/uranium_leggings/uranium_leggings_3

execute if score #book crazy_adventure.data matches 1 if data storage crazy_adventure:main Item.tag.crazy_adventure.uranium_boots run function crazy_adventure:work/upgrader/uranium_upgrader/uranium_boots/uranium_boots
execute if score #book crazy_adventure.data matches 0 if data storage crazy_adventure:main Item.tag.crazy_adventure.uranium_boots if data storage crazy_adventure:main Items[{Slot:20b}].tag.crazy_adventure.uranium_book run function crazy_adventure:work/upgrader/uranium_upgrader/uranium_boots/uranium_boots_2
execute if score #book crazy_adventure.data matches 0 if data storage crazy_adventure:main Item.tag.crazy_adventure.uranium_boots unless data storage crazy_adventure:main Items[{Slot:20b}].tag.crazy_adventure.uranium_book run function crazy_adventure:work/upgrader/uranium_upgrader/uranium_boots/uranium_boots_3

execute if score #book crazy_adventure.data matches 1 if data storage crazy_adventure:main Item.tag.crazy_adventure.uranium_shovel run function crazy_adventure:work/upgrader/uranium_upgrader/uranium_shovel/uranium_shovel
execute if score #book crazy_adventure.data matches 0 if data storage crazy_adventure:main Item.tag.crazy_adventure.uranium_shovel if data storage crazy_adventure:main Items[{Slot:20b}].tag.crazy_adventure.uranium_book run function crazy_adventure:work/upgrader/uranium_upgrader/uranium_shovel/uranium_shovel_2
execute if score #book crazy_adventure.data matches 0 if data storage crazy_adventure:main Item.tag.crazy_adventure.uranium_shovel unless data storage crazy_adventure:main Items[{Slot:20b}].tag.crazy_adventure.uranium_book run function crazy_adventure:work/upgrader/uranium_upgrader/uranium_shovel/uranium_shovel_3

#Storage dump
data remove storage crazy_adventure:main Items
data remove storage crazy_adventure:main Item

