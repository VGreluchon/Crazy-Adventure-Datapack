
setblock ~ ~ ~ cobbled_deepslate
summon glow_item_frame ~ ~ ~ {ItemRotation:0b,Tags:["global.ignore","global.ignore.kill","smithed.block","crazy_adventure.destroyer","crazy_adventure.destroy_cobbled_deepslate","crazy_adventure.template_battery","simplenergy.balancing","energy.receive","energy.send","crazy_adventure.set_new"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b,Item:{id:"barrel",Count:1b,tag:{CustomModelData:4220200}}}
execute as @e[type=glow_item_frame,tag=crazy_adventure.set_new,limit=1] at @s run function crazy_adventure:place/template_battery/secondary
