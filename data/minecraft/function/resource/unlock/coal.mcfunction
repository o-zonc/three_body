execute if score #coal unlock matches 1 run return 0
execute unless score #overworld civilization_age matches 2.. run title @s actionbar {text:"석기 시대에 도달해야 합니다.",color:"red",italic:true}
execute unless score #overworld civilization_age matches 2.. run function resource/effect/failure
execute unless score #overworld civilization_age matches 2.. run return 0
data remove storage data tmp.cost
data modify storage data tmp.cost set from storage data const.resource.coal.unlock_cost
execute store result score #coal_unlock_cost_check tmp run function resource/check_cost
execute unless score #coal_unlock_cost_check tmp matches 1 run title @s actionbar {text:"재료가 부족합니다.",color:"red",italic:true}
execute unless score #coal_unlock_cost_check tmp matches 1 run function resource/effect/failure
execute unless score #coal_unlock_cost_check tmp matches 1 run return 0
function resource/cost/take
scoreboard players set #coal unlock 1
execute in overworld run function resource/material/coal/place
execute in minecraft:overworld positioned 3.5 -58.5 35.5 run function resource/effect/unlock_success
function resource/material/coal/ui/info
return 1
