execute if score #lapis unlock matches 1 run return 0
execute unless score #overworld civilization_age matches 5.. run title @s actionbar "§c고대 시대에 도달해야 합니다."
execute unless score #overworld civilization_age matches 5.. run function resource/effect/failure
execute unless score #overworld civilization_age matches 5.. run return 0
data remove storage data tmp.cost
data modify storage data tmp.cost set from storage data const.resource.lapis.unlock_cost
execute store result score #lapis_unlock_cost_check tmp run function resource/check_cost
execute unless score #lapis_unlock_cost_check tmp matches 1 run title @s actionbar "§c재료가 부족합니다."
execute unless score #lapis_unlock_cost_check tmp matches 1 run function resource/effect/failure
execute unless score #lapis_unlock_cost_check tmp matches 1 run return 0
function resource/cost/take
scoreboard players set #lapis unlock 1
execute in overworld run function resource/material/lapis/place
execute in minecraft:overworld positioned -2.5 -61.5 -34.5 run function resource/effect/unlock_success
function resource/material/lapis/ui/info
return 1
