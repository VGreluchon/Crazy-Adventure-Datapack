
#Replace the item
	data modify entity @e[type=item,nbt={Item:{id:"minecraft:diamond_ore"}},limit=1,sort=nearest,distance=..1] Item set from storage energy_datapack_template:main all.XXX0000
	
#System to make drop count between 1 and 3
	execute store result score #count simplenergy.data run data get entity @e[type=item,nbt={Item:{id:"minecraft:diamond"}},predicate=!simplenergy:has_tag,limit=1,sort=nearest,distance=..1] Item.Count
	execute store result score #temp simplenergy.data run data get entity @s UUID[1]
	scoreboard players operation #temp simplenergy.data %= #3 simplenergy.data
	scoreboard players add #temp simplenergy.data 1
	scoreboard players operation #count simplenergy.data *= #temp simplenergy.data
	data modify entity @e[type=item,nbt={Item:{id:"minecraft:diamond"}},predicate=!simplenergy:has_tag,limit=1,sort=nearest,distance=..1] Item set from storage energy_datapack_template:main all.XXX0003
	execute store result entity @e[type=item,nbt={Item:{tag:{energy_datapack_template:{raw_template:1b}}}},limit=1,sort=nearest,distance=..1] Item.Count byte 1 run scoreboard players get #count simplenergy.data
kill @s
