
#Copy Block Item into a storage
	data modify storage crazy_adventure:main Items set from block ~ ~ ~ Items
	function crazy_adventure:work/stick_charger/storm_stick_charger/drop_gui
	function crazy_adventure:visual/storm_stick_charger

	execute if score @s crazy_adventure.charges matches ..9 if block ~ ~1 ~ lightning_rod run function crazy_adventure:work/stick_charger/storm_stick_charger/secondary

	execute if block ~ ~1 ~ lightning_rod[powered=true] run scoreboard players add @s crazy_adventure.charges 1
	execute if score @s crazy_adventure.working matches 20 run summon lightning_bolt ~ ~2 ~
	execute if score @s crazy_adventure.working matches 20 run scoreboard players add @s crazy_adventure.charges 1
	execute if score @s crazy_adventure.working matches 20 run scoreboard players set @s crazy_adventure.working 0
	execute if score @s crazy_adventure.charges matches 10.. unless data storage crazy_adventure:main Items[{Slot:15b,tag:{crazy_adventure:{storm_stick:1b}}}] if data storage crazy_adventure:main Items[{Slot:11b,tag:{crazy_adventure:{chargeless_stick:1b}}}] run loot replace block ~ ~ ~ container.15 loot crazy_adventure:i/storm_stick

	execute if score @s crazy_adventure.charges matches 10.. unless data storage crazy_adventure:main Items[{Slot:15b,tag:{crazy_adventure:{storm_stick:1b}}}] if data storage crazy_adventure:main Items[{Slot:11b,tag:{crazy_adventure:{chargeless_stick:1b}}}] run item replace block ~ ~ ~ container.11 with air
	execute if score @s crazy_adventure.charges matches 10.. unless data storage crazy_adventure:main Items[{Slot:15b,tag:{crazy_adventure:{storm_stick:1b}}}] if data storage crazy_adventure:main Items[{Slot:11b,tag:{crazy_adventure:{chargeless_stick:1b}}}] run scoreboard players set @s crazy_adventure.charges 0