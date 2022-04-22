
##Called by function tag #simplenergy:durability_multiplier
##Set the durability multiplier compared to vanilla durability
##Here 42 * leather armor durability (42000 divided by 1000)
##And 1.2 * diamond tools durability (1200 divided by 1000)

#Custom durability for Template Armor & Tools
	scoreboard players set #durability_multiplier simplenergy.data 42000
	execute unless score @s simplenergy.head = #helmet simplenergy.data if data storage simplenergy:main durability[{Slot:103b,tag:{energy_datapack_template:{template:1b}}}] run function simplenergy:opti/durability_multiplier/helmet
	execute unless score @s simplenergy.chest = #chestplate simplenergy.data if data storage simplenergy:main durability[{Slot:102b,tag:{energy_datapack_template:{template:1b}}}] run function simplenergy:opti/durability_multiplier/chestplate
	execute unless score @s simplenergy.legs = #leggings simplenergy.data if data storage simplenergy:main durability[{Slot:101b,tag:{energy_datapack_template:{template:1b}}}] run function simplenergy:opti/durability_multiplier/leggings
	execute unless score @s simplenergy.boots = #boots simplenergy.data if data storage simplenergy:main durability[{Slot:100b,tag:{energy_datapack_template:{template:1b}}}] run function simplenergy:opti/durability_multiplier/boots
	scoreboard players set #durability_multiplier simplenergy.data 1200
	execute unless score @s simplenergy.offhand = #offhand simplenergy.data if data storage simplenergy:main durability[{Slot:-106b,tag:{energy_datapack_template:{template:1b}}}] run function simplenergy:opti/durability_multiplier/offhand
	execute unless score @s simplenergy.mainhand = #mainhand simplenergy.data if data storage simplenergy:main durability[{Slot:-42b,tag:{energy_datapack_template:{template:1b}}}] run function simplenergy:opti/durability_multiplier/mainhand

