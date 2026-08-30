execute if score #copper unlock matches 1 run return 0
execute unless score #overworld civilization_age matches 2.. run title @s actionbar {text:"석기 시대에 도달해야 합니다.",color:"red",italic:true}
execute unless score #overworld civilization_age matches 2.. run function resource/effect/failure
execute unless score #overworld civilization_age matches 2.. run return 0
data remove storage data tmp.cost
data modify storage data tmp.cost set from storage data const.resource.copper.unlock_cost
execute store result score #copper_unlock_cost_check tmp run function resource/check_cost
execute unless score #copper_unlock_cost_check tmp matches 1 run title @s actionbar {text:"재료가 부족합니다.",color:"red",italic:true}
execute unless score #copper_unlock_cost_check tmp matches 1 run function resource/effect/failure
execute unless score #copper_unlock_cost_check tmp matches 1 run return 0
function resource/cost/take
scoreboard players set #copper unlock 1
execute in overworld run function resource/material/copper/place
function story/overworld/age/21_bronze_age
execute in minecraft:overworld positioned 3.5 -61.5 -34.5 run function resource/effect/unlock_success
function resource/material/copper/ui/info
return 1
