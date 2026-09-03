execute if score #iron unlock matches 1 run return 0
execute unless entity @a[tag=accelerator_experiment_running] unless score #overworld civilization_age matches 3.. run title @s actionbar {text:"청동기 시대에 도달해야 합니다.",color:"red",italic:true}
execute unless score #overworld civilization_age matches 3.. run function resource/effect/failure
execute unless score #overworld civilization_age matches 3.. run return 0
data remove storage data tmp.cost
data modify storage data tmp.cost set from storage data const.resource.iron.unlock_cost
execute store result score #iron_unlock_cost_check tmp run function resource/check_cost
execute unless entity @a[tag=accelerator_experiment_running] unless score #iron_unlock_cost_check tmp matches 1 run title @s actionbar {text:"재료가 부족합니다.",color:"red",italic:true}
execute unless score #iron_unlock_cost_check tmp matches 1 run function resource/effect/failure
execute unless score #iron_unlock_cost_check tmp matches 1 run return 0
function resource/cost/take
scoreboard players set #iron unlock 1
execute in overworld run function resource/material/iron/place
function story/overworld/age/22_iron_age
execute in minecraft:overworld positioned 1.5 -61.5 -34.5 run function resource/effect/unlock_success
function resource/material/iron/ui/info
return 1
