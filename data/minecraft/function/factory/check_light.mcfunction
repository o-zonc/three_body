# factory+check 현황판의 전체 공장 가동 표시등
scoreboard players set #factory_any_enabled tmp 0
execute if score #wood factory_unlocked matches 1 if score #wood factory_enabled matches 1 run scoreboard players set #factory_any_enabled tmp 1
execute if score #stone factory_unlocked matches 1 if score #stone factory_enabled matches 1 run scoreboard players set #factory_any_enabled tmp 1
execute if score #coal factory_unlocked matches 1 if score #coal factory_enabled matches 1 run scoreboard players set #factory_any_enabled tmp 1
execute if score #copper factory_unlocked matches 1 if score #copper factory_enabled matches 1 run scoreboard players set #factory_any_enabled tmp 1
execute if score #iron factory_unlocked matches 1 if score #iron factory_enabled matches 1 run scoreboard players set #factory_any_enabled tmp 1
execute if score #gold factory_unlocked matches 1 if score #gold factory_enabled matches 1 run scoreboard players set #factory_any_enabled tmp 1
execute if score #diamond factory_unlocked matches 1 if score #diamond factory_enabled matches 1 run scoreboard players set #factory_any_enabled tmp 1
execute if score #emerald factory_unlocked matches 1 if score #emerald factory_enabled matches 1 run scoreboard players set #factory_any_enabled tmp 1
execute if score #lapis factory_unlocked matches 1 if score #lapis factory_enabled matches 1 run scoreboard players set #factory_any_enabled tmp 1
execute if score #cold factory_unlocked matches 1 if score #cold factory_enabled matches 1 run scoreboard players set #factory_any_enabled tmp 1
execute if score #heat factory_unlocked matches 1 if score #heat factory_enabled matches 1 run scoreboard players set #factory_any_enabled tmp 1

execute at @e[type=interaction,tag=factory,tag=check] if score #factory_any_enabled tmp matches 1 if block ~ ~-1 ~ waxed_copper_bulb[lit=false,powered=false] run setblock ~ ~-1 ~ waxed_copper_bulb[lit=true,powered=false]
execute at @e[type=interaction,tag=factory,tag=check] if score #factory_any_enabled tmp matches 1 if block ~ ~-1 ~ waxed_copper_bulb[lit=false,powered=true] run setblock ~ ~-1 ~ waxed_copper_bulb[lit=true,powered=true]
execute at @e[type=interaction,tag=factory,tag=check] unless score #factory_any_enabled tmp matches 1 if block ~ ~-1 ~ waxed_copper_bulb[lit=true,powered=false] run setblock ~ ~-1 ~ waxed_copper_bulb[lit=false,powered=false]
execute at @e[type=interaction,tag=factory,tag=check] unless score #factory_any_enabled tmp matches 1 if block ~ ~-1 ~ waxed_copper_bulb[lit=true,powered=true] run setblock ~ ~-1 ~ waxed_copper_bulb[lit=false,powered=true]
