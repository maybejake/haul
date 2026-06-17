execute if entity @s[tag=haul.slow] run function haul:player/slow/remove
attribute @s minecraft:jump_strength modifier add haul:heavy -1 add_multiplied_total
attribute @s minecraft:movement_speed modifier add haul:heavy -1 add_multiplied_total
tag @s add haul.heavy