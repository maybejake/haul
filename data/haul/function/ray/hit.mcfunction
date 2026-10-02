#no items, fail
execute unless items block ~ ~ ~ container.* * run return run function haul:ray/fail

# blacklisted block
execute if block ~ ~ ~ #haul:blacklist run return run function haul:ray/fail

#contains filled chest, fail
execute if items block ~ ~ ~ container.* *[minecraft:custom_data~{"haul":{"carried_container":true}}] run return run function haul:ray/fail
execute if items block ~ ~ ~ container.* *[minecraft:bundle_contents~{items:{contains:[{predicates:{"minecraft:custom_data":{"haul":{"carried_container":true}}}}]}}] run function haul:ray/fail
execute if items block ~ ~ ~ container.* *[minecraft:container~{items:{contains:[{predicates:{"minecraft:custom_data":{"haul":{"carried_container":true}}}}]}}] run function haul:ray/fail

# get items and count
data modify storage haul:temp items set from block ~ ~ ~ Items
execute store result score $count haul.dummy run data get storage haul:temp items

# convert to container component format
data remove storage haul:temp container
function haul:container/format_loop

# give item to player
function haul:container/item with storage haul:temp

playsound minecraft:block.wood.break player @a ~ ~ ~ 1 2
playsound minecraft:entity.shulker.close player @a ~ ~ ~ 1 0.7
execute align xyz run particle minecraft:poof ~0.5 ~0.6 ~0.5 0.3 0.3 0.3 0 10 force
setblock ~ ~ ~ air replace