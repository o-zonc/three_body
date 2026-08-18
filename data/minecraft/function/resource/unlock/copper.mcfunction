execute if score #copper unlock matches 1 run return 0
execute unless score #overworld civilization_age matches 2.. run title @s actionbar "§c석기 시대에 도달해야 합니다."
execute unless score #overworld civilization_age matches 2.. run function resource/effect/failure
execute unless score #overworld civilization_age matches 2.. run return 0
data remove storage data tmp.cost
data modify storage data tmp.cost set from storage data const.resource.copper.unlock_cost
execute store result score #copper_unlock_cost_check tmp run function resource/check_cost
execute unless score #copper_unlock_cost_check tmp matches 1 run title @s actionbar "§c재료가 부족합니다."
execute unless score #copper_unlock_cost_check tmp matches 1 run function resource/effect/failure
execute unless score #copper_unlock_cost_check tmp matches 1 run return 0
function resource/cost/take
scoreboard players set #copper unlock 1
execute in overworld run function resource/material/copper/place
advancement grant @a only 0_overworld/12_bronze_age
execute unless score #overworld civilization_age matches 3.. run scoreboard players set #overworld civilization_age 3
function resource/effect/unlock_success
function resource/material/copper/ui/info
return 1
