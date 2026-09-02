return 0
execute if score #beacon_forceload_owned var matches 1 in minecraft:overworld run forceload remove 18 -31
scoreboard players set #beacon_forceload_owned var 0
return 0
