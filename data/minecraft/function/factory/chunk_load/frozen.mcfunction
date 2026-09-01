# diamond/cold: 서로 떨어진 frozen 청크 두 개를 개별 소유한다.
scoreboard players set #factory_need_frozen_diamond tmp 0
scoreboard players set #factory_need_frozen_cold tmp 0
execute if score #GLOBAL factory_build_stage matches 1.. if score #diamond factory_unlocked matches 1 if score #diamond factory_enabled matches 1 run scoreboard players set #factory_need_frozen_diamond tmp 1
execute if score #GLOBAL factory_build_stage matches 1.. if score #cold factory_unlocked matches 1 if score #cold factory_enabled matches 1 run scoreboard players set #factory_need_frozen_cold tmp 1
execute if score #factory_need_frozen_diamond tmp matches 1 unless score #factory_resource_frozen_diamond_owned var matches 1 in minecraft:frozen store success score #factory_resource_frozen_diamond_owned var run forceload add 0 -12
execute unless score #factory_need_frozen_diamond tmp matches 1 if score #factory_resource_frozen_diamond_owned var matches 1 in minecraft:frozen run forceload remove 0 -12
execute unless score #factory_need_frozen_diamond tmp matches 1 run scoreboard players set #factory_resource_frozen_diamond_owned var 0
execute if score #factory_need_frozen_cold tmp matches 1 unless score #factory_resource_frozen_cold_owned var matches 1 in minecraft:frozen store success score #factory_resource_frozen_cold_owned var run forceload add 0 48
execute unless score #factory_need_frozen_cold tmp matches 1 if score #factory_resource_frozen_cold_owned var matches 1 in minecraft:frozen run forceload remove 0 48
execute unless score #factory_need_frozen_cold tmp matches 1 run scoreboard players set #factory_resource_frozen_cold_owned var 0
