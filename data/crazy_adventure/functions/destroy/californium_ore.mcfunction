
#Replace the item
	data modify entity @e[type=item,nbt={Item:{id:"minecraft:emerald_ore"}},limit=1,sort=nearest,distance=..1] Item set from storage crazy_adventure:main all.4220020
	
#System to make drop count between 1 and 3
	execute store result score #count simplenergy.data run data get entity @e[type=item,nbt={Item:{id:"minecraft:emerald"}},predicate=!simplenergy:has_tag,limit=1,sort=nearest,distance=..1] Item.Count
	data modify entity @e[type=item,nbt={Item:{id:"minecraft:emerald"}},predicate=!simplenergy:has_tag,limit=1,sort=nearest,distance=..1] Item set from storage crazy_adventure:main all.4220023
	execute store result entity @e[type=item,nbt={Item:{tag:{crazy_adventure:{raw_californium:1b}}}},limit=1,sort=nearest,distance=..1] Item.Count byte 1 run scoreboard players get #count simplenergy.data
kill @s
