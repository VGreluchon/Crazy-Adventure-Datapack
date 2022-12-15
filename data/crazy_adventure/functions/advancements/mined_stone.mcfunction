
advancement revoke @s only crazy_adventure:technical/mined_stone

execute if data entity @s SelectedItem.tag.crazy_adventure.upgrades.ore_finder run function crazy_adventure:advancements/ore_finder
scoreboard players reset @s crazy_adventure.stone

