
#> crazy_adventure:calls/simpledrawer/californium/main
#
# @within	crazy_adventure:calls/simpledrawer/californium/block
#			crazy_adventure:calls/simpledrawer/californium/ingot
#			crazy_adventure:calls/simpledrawer/californium/nugget
#

# Set score of material found to 1
scoreboard players set #success_material simpledrawer.io 1

# Set the convert counts
scoreboard players set #ingot_in_block simpledrawer.io 9
scoreboard players set #nugget_in_ingot simpledrawer.io 9

# Set the material data
data modify storage simpledrawer:io material set value {material: "crazy_adventure.californium", material_name:'Californium'}

# Fill the NBT with your own items
data modify storage simpledrawer:io material.block.item set from storage crazy_adventure:items all.californium_block
data modify storage simpledrawer:io material.ingot.item set from storage crazy_adventure:items all.californium_ingot
data modify storage simpledrawer:io material.nugget.item set from storage crazy_adventure:items all.californium_nugget

