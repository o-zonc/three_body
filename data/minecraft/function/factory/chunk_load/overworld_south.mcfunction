# wood/coal share chunk (0,2); stone uses chunk (-1,2).
scoreboard players set #factory_need_overworld_south_east tmp 0
scoreboard players set #factory_need_overworld_south_west tmp 0
execute if score #GLOBAL factory_build_stage matches 1.. if score #wood factory_unlocked matches 1 if score #wood factory_enabled matches 1 run scoreboard players set #factory_need_overworld_south_east tmp 1
execute if score #GLOBAL factory_build_stage matches 1.. if score #coal factory_unlocked matches 1 if score #coal factory_enabled matches 1 run scoreboard players set #factory_need_overworld_south_east tmp 1
execute if score #GLOBAL factory_build_stage matches 1.. if score #stone factory_unlocked matches 1 if score #stone factory_enabled matches 1 run scoreboard players set #factory_need_overworld_south_west tmp 1
execute if score #factory_need_overworld_south_east tmp matches 1 unless score #factory_resource_overworld_south_east_owned var matches 1 in minecraft:overworld store success score #factory_resource_overworld_south_east_owned var run forceload add 0 35
execute unless score #factory_need_overworld_south_east tmp matches 1 if score #factory_resource_overworld_south_east_owned var matches 1 in minecraft:overworld run forceload remove 0 35
execute unless score #factory_need_overworld_south_east tmp matches 1 run scoreboard players set #factory_resource_overworld_south_east_owned var 0
execute if score #factory_need_overworld_south_west tmp matches 1 unless score #factory_resource_overworld_south_west_owned var matches 1 in minecraft:overworld store success score #factory_resource_overworld_south_west_owned var run forceload add -3 35
execute unless score #factory_need_overworld_south_west tmp matches 1 if score #factory_resource_overworld_south_west_owned var matches 1 in minecraft:overworld run forceload remove -3 35
execute unless score #factory_need_overworld_south_west tmp matches 1 run scoreboard players set #factory_resource_overworld_south_west_owned var 0
