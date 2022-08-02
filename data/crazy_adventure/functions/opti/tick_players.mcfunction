
execute if score @s crazy_adventure.right_click matches 1.. run function crazy_adventure:right_click/all
scoreboard players remove @s[scores={crazy_adventure.cooldown=1..}] crazy_adventure.cooldown 1
execute if score @s crazy_adventure.stone matches 1.. if data entity @s SelectedItem.tag.crazy_adventure.upgrades.ore_finder run function crazy_adventure:opti/advancements_rewards/ore_finder
scoreboard players reset @s crazy_adventure.stone
