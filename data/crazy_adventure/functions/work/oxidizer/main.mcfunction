
#Copy Block Item into a storage
	data modify storage crazy_adventure:main Items set from block ~ ~ ~ Items

	execute unless data storage crazy_adventure:main Items[{Slot:13b,id:"minecraft:copper_block"}] unless data storage crazy_adventure:main Items[{Slot:13b,id:"minecraft:exposed_copper"}] unless data storage crazy_adventure:main Items[{Slot:13b,id:"minecraft:weathered_copper"}] run function crazy_adventure:work/oxidizer/resetscore

	execute if data storage crazy_adventure:main Items[{Slot:11b,id:"minecraft:copper_block"}] unless data storage crazy_adventure:main Items[{Slot:13b,id:"minecraft:copper_block"}] unless data storage crazy_adventure:main Items[{Slot:13b,id:"minecraft:exposed_copper"}] unless data storage crazy_adventure:main Items[{Slot:13b,id:"minecraft:weathered_copper"}] run function crazy_adventure:work/oxidizer/place_in_middle
	execute if data storage crazy_adventure:main Items[{Slot:13b,id:"minecraft:copper_block"}] run function crazy_adventure:work/oxidizer/oxidizing
	execute if data storage crazy_adventure:main Items[{Slot:13b,id:"minecraft:exposed_copper"}] run function crazy_adventure:work/oxidizer/oxidizing
	execute if data storage crazy_adventure:main Items[{Slot:13b,id:"minecraft:weathered_copper"}] run function crazy_adventure:work/oxidizer/oxidizing

	