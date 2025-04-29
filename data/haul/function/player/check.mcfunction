# get filled chest quantity
execute store result score @s haul.chest_count run clear @s *[minecraft:custom_data~{"haul:chest":true}] 0

execute if score @s haul.chest_count matches 0 run return run function haul:player/reset
execute if score @s haul.chest_count matches 1 run return run function haul:player/slow/add
execute if score @s haul.chest_count matches 2.. run return run function haul:player/heavy/add
