
#> crazy_adventure:calls/simpledrawer/uranium/main
#
# @within	crazy_adventure:calls/simpledrawer/uranium/block
#			crazy_adventure:calls/simpledrawer/uranium/ingot
#			crazy_adventure:calls/simpledrawer/uranium/nugget
#

# Set score of material found to 1
scoreboard players set #success_material simpledrawer.io 1

# Set the convert counts
scoreboard players set #ingot_in_block simpledrawer.io 9
scoreboard players set #nugget_in_ingot simpledrawer.io 9

# Set the material data
data modify storage simpledrawer:io material set value {material: "crazy_adventure.uranium", material_name:'Uranium'}

# Fill the NBT with your own items
data modify storage simpledrawer:io material.block.item set from storage crazy_adventure:items all.uranium_block
data modify storage simpledrawer:io material.ingot.item set from storage crazy_adventure:items all.uranium_ingot
data modify storage simpledrawer:io material.nugget.item set from storage crazy_adventure:items all.uranium_nugget

