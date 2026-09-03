# 매크로 인수: type. 양수 비용을 절반으로 올림 처리한다.
$execute unless data storage data tmp.cost[{type:"$(type)"}].amount run return 0
$execute store result score #factory_energy_cost tmp run data get storage data tmp.cost[{type:"$(type)"}].amount
scoreboard players add #factory_energy_cost tmp 1
scoreboard players set #factory_energy_divisor tmp 2
scoreboard players operation #factory_energy_cost tmp /= #factory_energy_divisor tmp
$execute store result storage data tmp.cost[{type:"$(type)"}].amount int 1 run scoreboard players get #factory_energy_cost tmp
