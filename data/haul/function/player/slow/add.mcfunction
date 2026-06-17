execute if entity @s[tag=haul.heavy] run function haul:player/heavy/remove
attribute @s minecraft:movement_speed modifier add haul:slow -0.5 add_multiplied_total
tag @s add haul.slow