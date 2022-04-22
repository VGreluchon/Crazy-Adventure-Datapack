
setblock ~ ~ ~ cobbled_deepslate
summon glow_item_frame ~ ~ ~ {ItemRotation:0b,Tags:["global.ignore","global.ignore.kill","smithed.block","energy_datapack_template.destroyer","energy_datapack_template.destroy_cobbled_deepslate","energy_datapack_template.template_battery","simplenergy.balancing","energy.receive","energy.send","energy_datapack_template.set_new"],Invisible:1b,Invulnerable:1b,Fixed:1b,Silent:1b,Facing:1b,Item:{id:"barrel",Count:1b,tag:{CustomModelData:XXX0200}}}
execute as @e[type=glow_item_frame,tag=energy_datapack_template.set_new,limit=1] at @s run function energy_datapack_template:place/template_battery/secondary
