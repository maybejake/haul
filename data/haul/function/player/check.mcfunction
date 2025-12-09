# get filled chest quantity
execute store result score @s haul.chest_count run clear @s *[minecraft:custom_data~{"haul:chest":true}] 0
execute store result score @s haul.bundle_chest_count run clear @s *[minecraft:bundle_contents~{items:{contains:[{components:{"minecraft:custom_data":{smithed:{ignore:{crafting:1b,functionality:1b}},"haul:chest":1b}}}]}}] 0
execute store result score @s haul.shulker_chest_count run clear @s *[minecraft:container~{items:{contains:[{components:{"minecraft:custom_data":{smithed:{ignore:{crafting:1b,functionality:1b}},"haul:chest":1b}}}]}}] 0

scoreboard players operation @s haul.chest_count += @s haul.bundle_chest_count
scoreboard players operation @s haul.chest_count += @s haul.shulker_chest_count

execute if score @s haul.chest_count matches 0 run return run function haul:player/reset
execute if score @s haul.chest_count matches 1 run return run function haul:player/slow/add
execute if score @s haul.chest_count matches 2.. run return run function haul:player/heavy/add
