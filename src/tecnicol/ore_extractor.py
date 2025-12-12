
# ruff: noqa: E501
# Imports
from stewbeet import *


# Setup ore_extractor_1 work and visuals
def ore_extractor(gui: dict[str, str]) -> None:
	ns: str = Mem.ctx.project_id
	ORE_EXTRACTOR_SLOTS: int = 8
	ORE_EXTRACTOR_TIME: int = 200
	energy: JsonDict = Mem.definitions["ore_extractor_1"]["custom_data"]["energy"]

	write_load_file(f"""
# Quarry scoreboards & teams
scoreboard objectives add {ns}.working dummy
""", prepend=True)

	write_function(f"{ns}:custom_blocks/ore_extractor_1/second", f"""
				
# Consume energy
scoreboard players operation @s energy.storage -= @s {ns}.energy_rate
particle block stone ~ ~ ~ 1 1 1 1 10

scoreboard players add @s crazy_adventure.working 1
execute if score @s crazy_adventure.working matches 5 run loot insert ~ ~ ~ loot crazy_adventure:ore_extractor/lvl1
execute if score @s crazy_adventure.working matches 5 run scoreboard players set @s crazy_adventure.working 0
execute if score @s energy.storage matches ..19 run scoreboard players set @s crazy_adventure.working 0
""")
	
	Mem.ctx.data[ns].loot_tables["ore_extractor/lvl1"] = set_json_encoder(LootTable({
        "pools": [
            {
                "rolls": 1,
                "entries": [
                    {"type": "minecraft:item", "weight": 130, "name": "minecraft:cobblestone"},
                    {"type": "minecraft:item", "weight": 50, "name": "minecraft:coal"},
                    {"type": "minecraft:item", "weight": 20, "name": "minecraft:raw_copper"},
                    {"type": "minecraft:item", "weight": 20, "name": "minecraft:raw_iron"},
                    {"type": "minecraft:item", "weight": 20, "name": "minecraft:raw_gold"},
                    {"type": "minecraft:item", "weight": 5, "name": "minecraft:diamond"},
                    {"type": "minecraft:item", "weight": 2, "name": "minecraft:emerald"},
                    {"type": "minecraft:loot_table", "weight": 5, "value": "simplenergy:i/simplunium_nugget"},
                    {"type": "minecraft:loot_table", "weight": 2, "value": "simplenergy:i/raw_simplunium"},
                    {"type": "minecraft:loot_table", "weight": 5, "value": "crazy_adventure:i/uranium_nugget"},
                    {"type": "minecraft:loot_table", "weight": 2, "value": "crazy_adventure:i/raw_uranium"}
                ]
            }
        ]
    }), max_level=4)


# 	## Passive parts
# 	# Tick function
# 	all_gui: list[str] = [x for x in gui if "ore_extractor_1_" in x]
# 	gui_slot: int = 26
# 	nb_gui: int = len(all_gui)
# 	nb_gui_2: int = nb_gui - 2	# nb_gui-2 because we don't count the 0 and last
# 	machine_gui: list[str] = []
# 	previous_max: int = 0
# 	for i, gui_name in enumerate(all_gui):
# 		if i == 0:
# 			machine_gui.append(f"execute if score @s energy.storage matches ..0 run item replace block ~ ~ ~ container.{gui_slot} with {CUSTOM_ITEM_VANILLA}[item_model=\"{gui[gui_name]}\",{COMMON_SIGNAL_HIDDEN}]")
# 		elif i == (nb_gui - 1):
# 			machine_gui.append(f"execute if score @s energy.storage matches {previous_max + 1}.. run item replace block ~ ~ ~ container.{gui_slot} with {CUSTOM_ITEM_VANILLA}[item_model=\"{gui[gui_name]}\",{COMMON_SIGNAL_HIDDEN}]")
# 		else:
# 			gui_min: int = previous_max + 1
# 			previous_max = (i * energy["max_storage"] // nb_gui_2) - 1
# 			machine_gui.append(f"execute if score @s energy.storage matches {gui_min}..{previous_max} run item replace block ~ ~ ~ container.{gui_slot} with {CUSTOM_ITEM_VANILLA}[item_model=\"{gui[gui_name]}\",{COMMON_SIGNAL_HIDDEN}]")
# 	machine_gui_str: str = "\n".join(machine_gui)

# 	default_model: str = Mem.definitions["ore_extractor_1"]["item_model"]
# 	working_model: str = default_model + "_on"
# 	content: str = f"""
# # Copy slots to storage
# data modify storage {ns}:temp slots set value [{{}},{','.join(['{"blocked":true}'] * (ORE_EXTRACTOR_SLOTS - 1))}]
# data modify storage {ns}:temp slots set from entity @s item.components."minecraft:custom_data".{ns}.ore_extractor_1_slots
# data modify storage {ns}:temp Items set from block ~ ~ ~ Items

# # Launch work function if enough power
# scoreboard players set #working {ns}.data 0
# execute if score @s energy.storage >= @s {ns}.energy_rate run function {ns}:custom_blocks/ore_extractor_1/work

# # Update gui for each slot
# function {ns}:custom_blocks/ore_extractor_1/gui_for_each_slot

# # Update gui depending on energy storage
# data modify storage {ns}:temp intruder set from storage {ns}:temp Items[{{Slot:{gui_slot}b}}]
# execute if data storage {ns}:temp intruder unless data storage {ns}:temp intruder.components."minecraft:custom_data".common_signals.temp run function {ns}:custom_blocks/ore_extractor_1/handle_item_on_gui {{"index":{gui_slot},"slot":{gui_slot}}}
# {machine_gui_str}

# # Update block visual depends on cook time, and playsound every second
# execute if score #working {ns}.data matches 0 run data modify entity @s item.components."minecraft:item_model" set value "{default_model}"
# execute if score #working {ns}.data matches 1.. run data modify entity @s item.components."minecraft:item_model" set value "{working_model}"
# execute if score #working {ns}.data matches 1.. if score #second {ns}.data matches 0 run playsound {ns}:ore_extractor_1 block @a[distance=..12] ~ ~ ~ 0.25

# # Save slots to entity
# data modify entity @s item.components."minecraft:custom_data".{ns}.ore_extractor_1_slots set from storage {ns}:temp slots

# """
# 	write_function(f"{ns}:custom_blocks/ore_extractor_1/tick", content)

# 	# Gui for each slot
# 	slots: str = "\n".join(f"function {ns}:custom_blocks/ore_extractor_1/gui_passive_slot {{\"index\":{i},\"slot\":{i+9}}}" for i in range(ORE_EXTRACTOR_SLOTS))
# 	write_function(f"{ns}:custom_blocks/ore_extractor_1/gui_for_each_slot", f"""
# # For each slot, execute function to update gui
# {slots}
# """)

# 	# Set the item gui (blocked if not unlocked, progression otherwise)
# 	blocked_model: str = gui["gui/progress_blocked.png"]
# 	progressions_cmd: list[str] = [x for x in gui if "progress_unblocked_" in x]
# 	write_function(f"{ns}:custom_blocks/ore_extractor_1/gui_passive_slot", f"""
# # Get slot and progression, and the item
# scoreboard players set #progression {ns}.data 0
# $data modify storage {ns}:temp slot set from storage {ns}:temp slots[$(index)]
# execute store result score #progression {ns}.data run data get storage {ns}:temp slot.progression
# $data modify storage {ns}:temp intruder set from storage {ns}:temp Items[{{Slot:$(slot)b}}]

# # If item is not a GUI, launch function to handle it
# $execute if data storage {ns}:temp intruder unless data storage {ns}:temp intruder.components."minecraft:custom_data".common_signals.temp run function {ns}:custom_blocks/ore_extractor_1/handle_item_on_gui {{"index":$(index),"slot":$(slot)}}

# # Set item gui (blocked if not unlocked, progression otherwise)
# $execute if data storage {ns}:temp slot.blocked run item replace block ~ ~ ~ container.$(slot) with {CUSTOM_ITEM_VANILLA}[item_model="{blocked_model}",{COMMON_SIGNAL},item_name={{"text":"Blocked","italic":false}},lore=[{{"text":"Place a Slot Unlocker to unlock","color":"gray","italic":false}}]]
# $execute unless data storage {ns}:temp slot.blocked run function {ns}:custom_blocks/ore_extractor_1/gui_progression {{"index":$(index),"slot":$(slot)}}
# """)

# 	# Gui progression function
# 	progressions_gui: list[str] = []
# 	nb_gui = len(progressions_cmd)
# 	nb_gui_2 = nb_gui - 2	# nb_gui-2 because we don't count the 0 and last
# 	previous_max: int = 0
# 	for i, progression in enumerate(progressions_cmd):
# 		if i == 0:
# 			progressions_gui.append(f"$execute if score #progression {ns}.data matches ..0 run item replace block ~ ~ ~ container.$(slot) with {CUSTOM_ITEM_VANILLA}[item_model=\"{gui[progression]}\",{COMMON_SIGNAL_HIDDEN}]")
# 		elif i == (nb_gui - 1):
# 			progressions_gui.append(f"$execute if score #progression {ns}.data matches {previous_max + 1}.. run item replace block ~ ~ ~ container.$(slot) with {CUSTOM_ITEM_VANILLA}[item_model=\"{gui[progression]}\",{COMMON_SIGNAL_HIDDEN}]")
# 		else:
# 			gui_min: int = previous_max + 1
# 			previous_max = (i * ORE_EXTRACTOR_TIME // nb_gui_2) - 1
# 			progressions_gui.append(f"$execute if score #progression {ns}.data matches {gui_min}..{previous_max} run item replace block ~ ~ ~ container.$(slot) with {CUSTOM_ITEM_VANILLA}[item_model=\"{gui[progression]}\",{COMMON_SIGNAL_HIDDEN}]")
# 	write_function(f"{ns}:custom_blocks/ore_extractor_1/gui_progression", "\n".join(progressions_gui))


# 	# Handle intruder item on gui
# 	write_function(f"{ns}:custom_blocks/ore_extractor_1/handle_item_on_gui", f"""
# # If slot is locked and it's not a Slot Unlocker, drop the item
# scoreboard players set #drop_item {ns}.data 0
# execute unless data storage {ns}:temp slot.blocked run scoreboard players set #drop_item {ns}.data 1
# execute if score #drop_item {ns}.data matches 0 unless data storage {ns}:temp intruder.components."minecraft:custom_data".{ns}.slot_unlocker run scoreboard players set #drop_item {ns}.data 1
# execute if score #drop_item {ns}.data matches 1 run summon item ~ ~ ~ {{Item:{{id:"minecraft:stone",count:1b,components:{{"minecraft:custom_data":{{"temp":true}}}}}}}}
# execute if score #drop_item {ns}.data matches 1 run data modify entity @n[type=item,nbt={{Item:{{components:{{"minecraft:custom_data":{{"temp":true}}}}}}}}] Item set from storage {ns}:temp intruder

# # If slot is locked and item didn't drop, unlock the slot, playsound, and drop the item with count decreased by 1
# execute if score #drop_item {ns}.data matches 0 if data storage {ns}:temp slot.blocked run playsound block.anvil.destroy block @a[distance=..12]
# execute if score #drop_item {ns}.data matches 0 if data storage {ns}:temp slot.blocked run clear @a *[minecraft:custom_data={{"common_signals":{{"temp":true}}}}]
# $execute if score #drop_item {ns}.data matches 0 if data storage {ns}:temp slot.blocked run data remove storage {ns}:temp slots[$(index)].blocked
# execute if score #drop_item {ns}.data matches 0 if data storage {ns}:temp slot.blocked store result score #count {ns}.data run data get storage {ns}:temp intruder.count
# execute if score #drop_item {ns}.data matches 0 if data storage {ns}:temp slot.blocked run scoreboard players remove #count {ns}.data 1
# execute if score #drop_item {ns}.data matches 0 if data storage {ns}:temp slot.blocked if score #count {ns}.data matches 1.. store result storage {ns}:temp intruder.count byte 1 run scoreboard players get #count {ns}.data
# execute if score #drop_item {ns}.data matches 0 if data storage {ns}:temp slot.blocked if score #count {ns}.data matches 1.. run summon item ~ ~ ~ {{Item:{{id:"minecraft:stone",count:1b,components:{{"minecraft:custom_data":{{"temp":true}}}}}}}}
# execute if score #drop_item {ns}.data matches 0 if data storage {ns}:temp slot.blocked if score #count {ns}.data matches 1.. run data modify entity @n[type=item,nbt={{Item:{{components:{{"minecraft:custom_data":{{"temp":true}}}}}}}}] Item set from storage {ns}:temp intruder
# """)


# 	## Work parts
# 	# Work function
# 	for_each_slots: str = "\n".join(f"execute unless data storage {ns}:temp slots[{i}].blocked run function {ns}:custom_blocks/ore_extractor_1/gui_active_slot {{\"index\":{i},\"slot\":{i+9},\"result\":{i+9*2}}}" for i in range(ORE_EXTRACTOR_SLOTS))
# 	write_function(f"{ns}:custom_blocks/ore_extractor_1/work", f"""
# # Monitor if any slot is working
# {for_each_slots}

# # Consume energy if any slot is working
# execute if score #working {ns}.data matches 1.. run scoreboard players set #20 {ns}.data 20
# execute if score #working {ns}.data matches 1.. run scoreboard players operation #energy_rate {ns}.data = @s {ns}.energy_rate
# execute if score #working {ns}.data matches 1.. run scoreboard players operation #energy_rate {ns}.data /= #20 {ns}.data
# execute if score #working {ns}.data matches 1.. run scoreboard players operation @s energy.storage -= #energy_rate {ns}.data
# """)

# 	# Reset progress function
# 	write_function(f"{ns}:custom_blocks/ore_extractor_1/reset_progress", f"""
# scoreboard players set #progression {ns}.data 0
# $data modify storage {ns}:temp slots[$(index)].progression set value 0
# $function {ns}:custom_blocks/ore_extractor_1/gui_progression {{"index":$(index),"slot":$(slot)}}
# return fail
# """)

# 	# Gui for each active slot
# 	write_function(f"{ns}:custom_blocks/ore_extractor_1/gui_active_slot", f"""
# # Get progression
# scoreboard players set #progression {ns}.data 0
# $execute store result score #progression {ns}.data run data get storage {ns}:temp slots[$(index)].progression

# # Isolate ingredient and try to get result
# scoreboard players set #found {ns}.data 0
# data modify storage {ns}:main ore_extractor_1.input set value {{}}
# data modify storage {ns}:main ore_extractor_1.output set value {{}}
# $data modify storage {ns}:main ore_extractor_1.input set from storage {ns}:temp Items[{{Slot:$(index)b}}]
# $execute unless data storage {ns}:main ore_extractor_1.input run return run function {ns}:custom_blocks/ore_extractor_1/reset_progress {{"index":$(index),"slot":$(slot)}}
# execute summon item_display run function {ns}:custom_blocks/ore_extractor_1/get_ore_extractor_1_recipe

# # If no recipe found, stop
# $execute if score #found {ns}.data matches 0 run return run function {ns}:custom_blocks/ore_extractor_1/reset_progress {{"index":$(index),"slot":$(slot)}}

# # Else, if output do not match current output slot, stop
# scoreboard players set #output_occupied {ns}.data 0
# $execute if data storage {ns}:temp Items[{{Slot:$(result)b}}] run scoreboard players set #output_occupied {ns}.data 1
# execute if score #output_occupied {ns}.data matches 1 run scoreboard players set #is_not_same_output {ns}.data 0
# $execute if score #output_occupied {ns}.data matches 1 run data modify storage {ns}:temp copy set from storage {ns}:temp Items[{{Slot:$(result)b}}]
# execute if score #output_occupied {ns}.data matches 1 store success score #is_not_same_output {ns}.data run data modify storage {ns}:temp copy.id set from storage {ns}:main ore_extractor_1.output.id
# execute if score #output_occupied {ns}.data matches 1 if score #is_not_same_output {ns}.data matches 0 store success score #is_not_same_output {ns}.data run data modify storage {ns}:temp copy.components set from storage {ns}:main ore_extractor_1.output.components
# $execute if score #output_occupied {ns}.data matches 1 if score #is_not_same_output {ns}.data matches 1 run return run function simplenergy:custom_blocks/ore_extractor_1/reset_progress {{"index":$(index),"slot":$(slot)}}

# # Progress the slot
# scoreboard players add #progression {ns}.data 1
# $execute if score #progression {ns}.data matches ..{ORE_EXTRACTOR_TIME - 1} store result storage {ns}:temp slots[$(index)].progression int 1 run scoreboard players get #progression {ns}.data
# scoreboard players add #working {ns}.data 1

# # Calculate the output count
# execute store result score #count {ns}.data run data get storage {ns}:temp copy.count
# execute store result score #to_add {ns}.data run data get storage {ns}:main ore_extractor_1.output.count
# scoreboard players operation #count {ns}.data += #to_add {ns}.data
# $execute if score #output_occupied {ns}.data matches 1 run function {ns}:custom_blocks/ore_extractor_1/get_max_stack_size {{"result":$(result)}}
# $execute if score #output_occupied {ns}.data matches 1 if score #count {ns}.data > #max_stack_size {ns}.data run return run function simplenergy:custom_blocks/ore_extractor_1/reset_progress {{"index":$(index),"slot":$(slot)}}

# # Add the item to the result slot if progression is done
# execute if score #progression {ns}.data matches ..{ORE_EXTRACTOR_TIME - 1} run return 1
# $execute if score #output_occupied {ns}.data matches 1 store result block ~ ~ ~ Items[{{Slot:$(result)b}}].count int 1 run scoreboard players get #count {ns}.data
# $execute if score #output_occupied {ns}.data matches 0 run data modify storage {ns}:main ore_extractor_1.output.Slot set value $(result)b
# execute if score #output_occupied {ns}.data matches 0 run data modify block ~ ~ ~ Items append from storage {ns}:main ore_extractor_1.output

# # Reset progression and remove 1 count to ingredient
# $function simplenergy:custom_blocks/ore_extractor_1/reset_progress {{"index":$(index),"slot":$(slot)}}
# execute store result score #count {ns}.data run data get storage {ns}:main ore_extractor_1.input.count
# scoreboard players remove #count {ns}.data 1
# $execute if score #count {ns}.data matches 1.. store result block ~ ~ ~ Items[{{Slot:$(index)b}}].count int 1 run scoreboard players get #count {ns}.data
# $execute if score #count {ns}.data matches 0 run data remove block ~ ~ ~ Items[{{Slot:$(index)b}}]
# """)

# 	# Get ore_extractor_1 recipe function
# 	write_function(f"{ns}:custom_blocks/ore_extractor_1/get_ore_extractor_1_recipe", f"""
# # Get the recipe
# function #{ns}:calls/ore_extractor_1_recipes

# # Place in storage the given output (if any)
# execute if score #found {ns}.data matches 1 run data modify storage {ns}:main ore_extractor_1.output set from entity @s item

# # Kill temporary entity
# kill @s
# """)

# 	# Get max stack size function
# 	content: str = ""
# 	numbers: list[int] = [64, 16, 1, 99]
# 	numbers += [i for i in range(1, 100) if i not in numbers]
# 	for i in numbers:
# 		content += f"$execute if items entity @s container.$(result) *[minecraft:max_stack_size={i}] run return {i}\n"
# 	write_function(f"{ns}:custom_blocks/ore_extractor_1/get_max_stack_size", content)

# 	# Keep track of unlocked slots when destroying and placing
# 	write_function(f"{ns}:custom_blocks/ore_extractor_1/destroy", f"""# Copy slots to storage
# data remove storage {ns}:temp slots
# data modify storage {ns}:temp slots set from entity @s item.components."minecraft:custom_data".{ns}.ore_extractor_1_slots
# \n""", prepend = True)
# 	write_function(f"{ns}:custom_blocks/ore_extractor_1/replace_item", f"""
# # Save slots to the item components
# execute if data storage {ns}:temp slots run data modify entity @s Item.components."minecraft:custom_data".{ns}.ore_extractor_1_slots set from storage {ns}:temp slots
# execute if data storage {ns}:temp slots run data modify entity @s Item.components."minecraft:lore" prepend value {{"text":"Unlocked slots saved.","color":"dark_gray","italic":false}}
# """)
# 	write_function(f"{ns}:custom_blocks/ore_extractor_1/place_secondary", f"""
# # Copy slots to the item components
# data modify entity @s item.components."minecraft:custom_data".{ns}.ore_extractor_1_slots set from entity @p[tag={ns}.placer] SelectedItem.components."minecraft:custom_data".{ns}.ore_extractor_1_slots
# """)


# 	# ItemIO compatibility
# 	base: str = 'data modify entity @s item.components."minecraft:custom_data".itemio.ioconfig'
# 	content: str = f"""
# # ItemIO compatibility
# tag @s add itemio.container
# tag @s add itemio.container.hopper
# {base} set value []
# """
# 	for i in range(ORE_EXTRACTOR_SLOTS):
# 		content += f'{base} append value {{"Slot":{i},"mode":"input","allowed_side":{{"north":true,"south":true,"east":true,"west":true,"top":true}}}}\n'
# 	for i in range(ORE_EXTRACTOR_SLOTS):
# 		content += f'{base} append value {{"Slot":{i+2*9},"mode":"output","allowed_side":{{"bottom":true}}}}\n'
# 	content += "function #itemio:calls/container/init\n"
# 	write_function(f"{ns}:custom_blocks/ore_extractor_1/place_secondary", content)
# 	write_function(f"{ns}:custom_blocks/ore_extractor_1/destroy", "# ItemIO compatibility\nfunction #itemio:calls/container/destroy\n\n", prepend = True)

# 	return

