
#Replace the item to keep Motion
	data modify entity @e[type=item,nbt={Item:{id:"minecraft:barrel"}},predicate=!simplenergy:has_tag,limit=1,sort=nearest,distance=..1] Item set from storage crazy_adventure:main all.ore_extractor_lvl_1

#Call on a machine when broken to remove its connections
function energy:v1/api/break_machine
kill @s
