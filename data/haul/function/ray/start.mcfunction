scoreboard players set $distance haul.dummy 0

tag @s add haul.ray
execute at @s anchored eyes positioned ^ ^ ^ anchored feet run function haul:ray/ray
tag @s remove haul.ray