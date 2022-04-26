
#Replace the item to keep Motion
	data modify entity @e[type=item,nbt={Item:{id:"minecraft:jungle_sapling"}},predicate=!simplenergy:has_tag,limit=1,sort=nearest,distance=..1] Item set from storage crazy_adventure:main all.4220015
kill @s
