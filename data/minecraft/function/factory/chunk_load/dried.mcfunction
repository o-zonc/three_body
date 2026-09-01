# heat/gold: dried chunks (-1..0, 0)
scoreboard players set #factory_need_dried tmp 0
execute if score #GLOBAL factory_build_stage matches 1.. if score #heat factory_unlocked matches 1 if score #heat factory_enabled matches 1 run scoreboard players set #factory_need_dried tmp 1
execute if score #GLOBAL factory_build_stage matches 1.. if score #gold factory_unlocked matches 1 if score #gold factory_enabled matches 1 run scoreboard players set #factory_need_dried tmp 1
execute if score #factory_need_dried tmp matches 1 unless score #factory_resource_dried_owned var matches 1 in minecraft:dried store success score #factory_resource_dried_owned var run forceload add -6 0 6 0
execute unless score #factory_need_dried tmp matches 1 if score #factory_resource_dried_owned var matches 1 in minecraft:dried run forceload remove -6 0 6 0
execute unless score #factory_need_dried tmp matches 1 run scoreboard players set #factory_resource_dried_owned var 0
