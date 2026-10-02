# get filled container quantity
execute store result score $count haul.dummy if items entity @s haul:inventory *[minecraft:custom_data~{"haul":{"carried_container":true}}]
execute store result score $bundle_count haul.dummy if items entity @s haul:inventory *[minecraft:bundle_contents~{items:{contains:[{predicates:{"minecraft:custom_data":{"haul":{"carried_container":true}}}}]}}]
execute store result score $shulker_count haul.dummy if items entity @s haul:inventory *[minecraft:container~{items:{contains:[{predicates:{"minecraft:custom_data":{"haul":{"carried_container":true}}}}]}}]

scoreboard players operation $count haul.dummy += $bundle_count haul.dummy
scoreboard players operation $count haul.dummy += $shulker_count haul.dummy

execute if score $count haul.dummy matches 0 run return run function haul:player/reset

tag @s add haul.carrying_container
execute if score $count haul.dummy matches 1 run return run function haul:player/slow/add
execute if score $count haul.dummy matches 2.. run return run function haul:player/heavy/add
