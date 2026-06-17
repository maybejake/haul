tellraw @a[gamemode=creative] [{"text":"Haul","color":"dark_green","bold":true}," uninstalled!"]

scoreboard objectives remove haul.chest_count
scoreboard objectives remove haul.dummy

data remove storage haul:item slot
data remove storage haul:item item
data remove storage haul:chest items
data remove storage haul:give container