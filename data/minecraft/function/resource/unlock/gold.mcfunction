# Pure resource unlock.
execute if score #gold unlock matches 1 run return 0
data remove storage data tmp.cost
data modify storage data tmp.cost set from storage data const.resource.gold.unlock_cost
execute store result score #gold_unlock_cost_check tmp run function resource/check_cost
execute unless score #gold_unlock_cost_check tmp matches 1 run title @s actionbar {text:"재료가 부족합니다.",color:"red",italic:true}
execute unless score #gold_unlock_cost_check tmp matches 1 run function resource/effect/failure
execute unless score #gold_unlock_cost_check tmp matches 1 run return 0
function resource/cost/take
scoreboard players set #gold unlock 1
function resource/material/gold/place
execute in minecraft:overworld positioned 0.5 -58.5 0.5 run function resource/effect/unlock_success
return 1
