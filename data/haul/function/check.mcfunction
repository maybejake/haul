execute store result score @s haul.chest_count run clear @s *[minecraft:custom_data~{"haul:chest":1b}] 0
execute if score @s haul.chest_count matches 1 run effect give @s minecraft:slowness 2 2 true

execute if score @s haul.chest_count matches 2.. run effect give @s minecraft:slowness 2 10 true
execute if score @s haul.chest_count matches 2.. run return run attribute @s minecraft:jump_strength modifier add haul:heavy -1 add_multiplied_total

attribute @s minecraft:jump_strength modifier remove haul:heavy
