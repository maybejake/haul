execute if data block ~ ~ ~ Items run return run function haul:ray/hit
scoreboard players add $distance haul.dummy 1

execute if score $distance haul.dummy matches ..150 positioned ^ ^ ^0.01 run function haul:ray/ray