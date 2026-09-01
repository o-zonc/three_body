# copper/iron share chunk (0,-3); emerald/lapis share chunk (-1,-3).
scoreboard players set #factory_need_overworld_north_east tmp 0
scoreboard players set #factory_need_overworld_north_west tmp 0
execute if score #GLOBAL factory_build_stage matches 1.. if score #copper factory_unlocked matches 1 if score #copper factory_enabled matches 1 run scoreboard players set #factory_need_overworld_north_east tmp 1
execute if score #GLOBAL factory_build_stage matches 1.. if score #iron factory_unlocked matches 1 if score #iron factory_enabled matches 1 run scoreboard players set #factory_need_overworld_north_east tmp 1
execute if score #GLOBAL factory_build_stage matches 1.. if score #emerald factory_unlocked matches 1 if score #emerald factory_enabled matches 1 run scoreboard players set #factory_need_overworld_north_west tmp 1
execute if score #GLOBAL factory_build_stage matches 1.. if score #lapis factory_unlocked matches 1 if score #lapis factory_enabled matches 1 run scoreboard players set #factory_need_overworld_north_west tmp 1
execute if score #factory_need_overworld_north_east tmp matches 1 unless score #factory_resource_overworld_north_east_owned var matches 1 in minecraft:overworld store success score #factory_resource_overworld_north_east_owned var run forceload add 3 -35
execute unless score #factory_need_overworld_north_east tmp matches 1 if score #factory_resource_overworld_north_east_owned var matches 1 in minecraft:overworld run forceload remove 3 -35
execute unless score #factory_need_overworld_north_east tmp matches 1 run scoreboard players set #factory_resource_overworld_north_east_owned var 0
execute if score #factory_need_overworld_north_west tmp matches 1 unless score #factory_resource_overworld_north_west_owned var matches 1 in minecraft:overworld store success score #factory_resource_overworld_north_west_owned var run forceload add -3 -35
execute unless score #factory_need_overworld_north_west tmp matches 1 if score #factory_resource_overworld_north_west_owned var matches 1 in minecraft:overworld run forceload remove -3 -35
execute unless score #factory_need_overworld_north_west tmp matches 1 run scoreboard players set #factory_resource_overworld_north_west_owned var 0
