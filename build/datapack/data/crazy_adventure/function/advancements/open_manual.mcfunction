
#> crazy_adventure:advancements/open_manual
#
# @executed	as the player & at current position
#
# @within	advancement crazy_adventure:technical/open_manual
#

# Revoke advancement and reset score
advancement revoke @s only crazy_adventure:technical/open_manual
scoreboard players set @s crazy_adventure.open_manual 0

# Show manual dialog if holding the manual
execute if items entity @s weapon.* *[custom_data~{crazy_adventure:{manual:true}}] run dialog show @s crazy_adventure:manual/page_1

