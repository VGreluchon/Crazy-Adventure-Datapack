scoreboard players set #success crazy_adventure.data 0
data modify storage crazy_adventure:main temp set from storage crazy_adventure:main LoreTemp[0]
execute store success score #success crazy_adventure.data run data modify storage crazy_adventure:main LoreTemp[0] set value '{"color":"gray","italic":false,"translate": "Second Life I"}'

execute if score #success crazy_adventure.data matches 1 run data modify storage crazy_adventure:main Lore append from storage crazy_adventure:main temp

data remove storage crazy_adventure:main LoreTemp[0]
execute if data storage crazy_adventure:main LoreTemp[0] run function crazy_adventure:opti/advancements_rewards/second_life_3