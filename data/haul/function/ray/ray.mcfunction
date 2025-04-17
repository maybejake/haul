execute if score @s haul.raycast_hit matches 0 if block ~ ~ ~ #haul:containers run function haul:ray/hit
scoreboard players add @s haul.raycast_distance 1

execute if score @s haul.raycast_hit matches 0 if score @s haul.raycast_distance matches ..100 positioned ^ ^ ^0.01 run function haul:ray/ray