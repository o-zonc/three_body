# Macro arg: id
# check 현황판은 제외하고 powered 상태를 보존한 채 lit 상태만 변경합니다.
$execute at @e[type=interaction,tag=factory,tag=$(id),tag=!check] if score #$(id) factory_unlocked matches 1 if block ~ ~-1 ~ waxed_copper_bulb[lit=false,powered=false] run setblock ~ ~-1 ~ waxed_copper_bulb[lit=true,powered=false]
$execute at @e[type=interaction,tag=factory,tag=$(id),tag=!check] if score #$(id) factory_unlocked matches 1 if block ~ ~-1 ~ waxed_copper_bulb[lit=false,powered=true] run setblock ~ ~-1 ~ waxed_copper_bulb[lit=true,powered=true]
$execute at @e[type=interaction,tag=factory,tag=$(id),tag=!check] unless score #$(id) factory_unlocked matches 1 if block ~ ~-1 ~ waxed_copper_bulb[lit=true,powered=false] run setblock ~ ~-1 ~ waxed_copper_bulb[lit=false,powered=false]
$execute at @e[type=interaction,tag=factory,tag=$(id),tag=!check] unless score #$(id) factory_unlocked matches 1 if block ~ ~-1 ~ waxed_copper_bulb[lit=true,powered=true] run setblock ~ ~-1 ~ waxed_copper_bulb[lit=false,powered=true]
