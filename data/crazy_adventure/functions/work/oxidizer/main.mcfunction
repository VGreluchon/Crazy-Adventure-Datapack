
#Copy Block Item into a storage
	data modify storage crazy_adventure:main Items set from block ~ ~ ~ Items

	

	execute if score @s crazy_adventure.charges matches 5.. unless data storage crazy_adventure:main Items[{Slot:15b,tag:{crazy_adventure:{fertilizer_stick:1b}}}] if data storage crazy_adventure:main Items[{Slot:11b,tag:{crazy_adventure:{chargeless_stick:1b}}}]