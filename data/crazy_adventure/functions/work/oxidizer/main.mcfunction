
#Copy Block Item into a storage
	data modify storage crazy_adventure:main Items set from block ~ ~ ~ Items

	execute if data storage crazy_adventure:main Items[{Slot:13b,id:"minecraft:air"}] run function crazy_adventure:work/oxidizer/resetscore

	execute unless data storage crazy_adventure:main Items[{Slot:13b,id:"minecraft:copper_block"}]