
execute if score @s energy.storage <= @s energy.max_storage run function crazy_adventure:work/oxidizer/main

execute if block ~ ~ ~ barrel[open=true] run function crazy_adventure:visual/oxidizer_2