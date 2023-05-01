
#Replace the item to keep Motion
	execute if block ~ ~ ~ jungle_log run function crazy_adventure:work/banana_sapling/secondary
	data modify entity @e[type=item,nbt={Item:{id:"minecraft:jungle_sapling"}},predicate=!simplenergy:has_tag,limit=1,sort=nearest,distance=..1] Item set from storage crazy_adventure:main all.banana_sapling
kill @s
