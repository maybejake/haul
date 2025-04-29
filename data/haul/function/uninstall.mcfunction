tellraw @a ["",{"text":"Haul v1.2","color":"dark_green","bold":true}," uninstalled!"]

scoreboard objectives remove haul.raycast_hit
scoreboard objectives remove haul.raycast_distance
scoreboard objectives remove haul.slot_count
scoreboard objectives remove haul.chest_count

data remove storage haul:item slot
data remove storage haul:item item
data remove storage haul:chest items
data remove storage haul:give container