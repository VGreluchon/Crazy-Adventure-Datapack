
#Replace the item to keep Motion
	data modify entity @e[type=item,nbt={Item:{id:"minecraft:iron_block"}},predicate=!simplenergy:has_tag,limit=1,sort=nearest,distance=..1] Item set from storage energy_datapack_template:main all.XXX0002
kill @s
