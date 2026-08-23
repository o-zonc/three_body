# Pure resource unlock.
execute if score #stone unlock matches 1 run return 0
data remove storage data tmp.cost
data modify storage data tmp.cost set from storage data const.resource.stone.unlock_cost
execute store result score #stone_unlock_cost_check tmp run function resource/check_cost
execute unless score #stone_unlock_cost_check tmp matches 1 run title @s actionbar "§c재료가 부족합니다."
execute unless score #stone_unlock_cost_check tmp matches 1 run function resource/effect/failure
execute unless score #stone_unlock_cost_check tmp matches 1 run return 0
function resource/cost/take
scoreboard players set #stone unlock 1
function resource/material/stone/place
advancement grant @a only 0_overworld/11_stone_age
execute unless score #overworld civilization_age matches 2.. run scoreboard players set #overworld civilization_age 2
execute in minecraft:overworld positioned -2.5 -58.5 35.5 run function resource/effect/unlock_success
function resource/material/stone/ui/info
return 1
