scoreboard players remove $count haul.dummy 1

data modify storage haul:temp container prepend value {}
data modify storage haul:temp container[0].slot set from storage haul:temp items[-1].Slot

data remove storage haul:temp items[-1].Slot

data modify storage haul:temp container[0].item set from storage haul:temp items[-1]

data remove storage haul:temp items[-1]

execute if score $count haul.dummy matches 1.. run function haul:container/format_loop