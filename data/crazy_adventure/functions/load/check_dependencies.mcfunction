
## Check if Crazy Adventure is loadable (dependencies)
scoreboard players set #load_error crazy_adventure.data 0
# None for now
#execute if score #load_error crazy_adventure.data matches 0 unless score #smithed.damage.major load.status matches 0.. run scoreboard players set #load_error stardust.data 4

