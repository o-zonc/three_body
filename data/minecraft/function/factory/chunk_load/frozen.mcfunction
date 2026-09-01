# diamond/cold: frozen chunks (0, -1) and (0, 3)
scoreboard players set #factory_need_frozen tmp 0
execute if score #GLOBAL factory_build_stage matches 1.. if score #diamond factory_unlocked matches 1 if score #diamond factory_enabled matches 1 run scoreboard players set #factory_need_frozen tmp 1
execute if score #GLOBAL factory_build_stage matches 1.. if score #cold factory_unlocked matches 1 if score #cold factory_enabled matches 1 run scoreboard players set #factory_need_frozen tmp 1
execute if score #factory_need_frozen tmp matches 1 unless score #factory_resource_frozen_owned var matches 1 in minecraft:frozen store success score #factory_resource_frozen_owned var run forceload add 0 -12 0 48
execute unless score #factory_need_frozen tmp matches 1 if score #factory_resource_frozen_owned var matches 1 in minecraft:frozen run forceload remove 0 -12 0 48
execute unless score #factory_need_frozen tmp matches 1 run scoreboard players set #factory_resource_frozen_owned var 0
