# wood/stone/coal: overworld chunks (-1..0, 2)
scoreboard players set #factory_need_overworld_south tmp 0
execute if score #GLOBAL factory_build_stage matches 1.. if score #wood factory_unlocked matches 1 if score #wood factory_enabled matches 1 run scoreboard players set #factory_need_overworld_south tmp 1
execute if score #GLOBAL factory_build_stage matches 1.. if score #stone factory_unlocked matches 1 if score #stone factory_enabled matches 1 run scoreboard players set #factory_need_overworld_south tmp 1
execute if score #GLOBAL factory_build_stage matches 1.. if score #coal factory_unlocked matches 1 if score #coal factory_enabled matches 1 run scoreboard players set #factory_need_overworld_south tmp 1
execute if score #factory_need_overworld_south tmp matches 1 unless score #factory_resource_overworld_south_owned var matches 1 in minecraft:overworld store success score #factory_resource_overworld_south_owned var run forceload add -3 35 3 35
execute unless score #factory_need_overworld_south tmp matches 1 if score #factory_resource_overworld_south_owned var matches 1 in minecraft:overworld run forceload remove -3 35 3 35
execute unless score #factory_need_overworld_south tmp matches 1 run scoreboard players set #factory_resource_overworld_south_owned var 0
