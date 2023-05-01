
execute store result storage crazy_adventure:main souls byte -1 run data get entity @s Inventory[{Slot:-106b}].tag.crazy_adventure.souls.Count -1.001
item modify entity @s weapon.offhand crazy_adventure:add_souls
execute if data storage crazy_adventure:main {souls:51b} run data modify block -30000000 14 1610 Items append from storage crazy_adventure:main all.half_filled_souls_bag
execute if data storage crazy_adventure:main {souls:51b} run item replace entity @s weapon.offhand from block -30000000 14 1610 container.16
execute if data storage crazy_adventure:main {souls:101b} run data modify block -30000000 14 1610 Items append from storage crazy_adventure:main all.filled_souls_bag
execute if data storage crazy_adventure:main {souls:101b} run item replace entity @s weapon.offhand from block -30000000 14 1610 container.16

advancement revoke @s only crazy_adventure:technical/souls_bag
