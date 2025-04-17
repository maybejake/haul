scoreboard players set @s haul.raycast_hit 0
scoreboard players set @s haul.raycast_distance 0

tag @s add haul.ray
execute at @s anchored eyes positioned ^ ^ ^ anchored feet run function haul:ray/ray
tag @s remove haul.ray