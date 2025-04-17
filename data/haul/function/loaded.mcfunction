tellraw @a ["",{"text":"Haul","color":"dark_green","bold":true}," loaded!"]

scoreboard objectives add haul.raycast_hit dummy
scoreboard objectives add haul.raycast_distance dummy
scoreboard objectives add haul.slot_count dummy
scoreboard objectives add haul.chest_count dummy

function haul:tick_20