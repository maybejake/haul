summon minecraft:item_display ~ ~1000 ~ {UUID:[I;-419450404,-252491308,-1414519005,1238493353]}

# set as block
loot replace entity e6ffb1dc-f0f3-49d4-abb0-272349d1e8a9 contents mine ~ ~ ~ minecraft:netherite_pickaxe[minecraft:enchantments={"minecraft:silk_touch":1}]

# set as filled container
$item modify entity e6ffb1dc-f0f3-49d4-abb0-272349d1e8a9 contents {type:"minecraft:sequence",functions:["haul:carried_container",{type:"minecraft:set_components",components:{"minecraft:container":$(container)}}]}

# give to player
item replace entity @s {type:"limit_slots",limit:1,slot_source:{type:"minecraft:filtered",item_filter:{items:"minecraft:air"},slot_source:{type:"minecraft:slot_range",slots:"container.*",source:"this"}}} from entity e6ffb1dc-f0f3-49d4-abb0-272349d1e8a9 contents

kill e6ffb1dc-f0f3-49d4-abb0-272349d1e8a9