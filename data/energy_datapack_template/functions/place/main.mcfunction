
##Called by function tag #smithed.custom_block:event/on_place

execute if data storage smithed.custom_block:main blockApi.__data.Items[0].tag.smithed.block{from:"energy_datapack_template"} run function energy_datapack_template:place/all
