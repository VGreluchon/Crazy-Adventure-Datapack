
#Replace the item to keep Motion
	data modify entity @e[type=item,nbt={Item:{id:"minecraft:furnace"}},predicate=!simplenergy:has_tag,limit=1,sort=nearest,distance=..1] Item set from storage energy_datapack_template:main all.XXX0300

#Call on a machine when broken to remove its connections
function energy:v1/api/break_machine
kill @s
