data modify storage haul:chest Items set from block ~ ~ ~ Items

#no items, stop
execute store result score $count haul.dummy run data get storage haul:chest Items
execute if score $count haul.dummy matches ..0 run return fail

#contains filled chest, stop
execute if items block ~ ~ ~ container.* *[minecraft:custom_data~{"haul:chest":true}] run return fail

function haul:container_variant

function haul:items/main
function haul:give with storage haul:give

playsound minecraft:block.wood.break master @s ~ ~ ~ 1 2
playsound minecraft:entity.shulker.close master @s ~ ~ ~ 1 0.7
execute align xyz run particle minecraft:poof ~0.5 ~0.6 ~0.5 0.3 0.3 0.3 0 10 force
setblock ~ ~ ~ air replace