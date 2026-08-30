# Pure resource unlock.
execute if score #stone unlock matches 1 run return 0
data remove storage data tmp.cost
data modify storage data tmp.cost set from storage data const.resource.stone.unlock_cost
execute store result score #stone_unlock_cost_check tmp run function resource/check_cost
execute unless score #stone_unlock_cost_check tmp matches 1 run title @s actionbar {text:"재료가 부족합니다.",color:"red",italic:true}
execute unless score #stone_unlock_cost_check tmp matches 1 run function resource/effect/failure
execute unless score #stone_unlock_cost_check tmp matches 1 run return 0
function resource/cost/take
scoreboard players set #stone unlock 1
function resource/material/stone/place
function story/overworld/age/20_stone_age
execute in minecraft:overworld positioned -2.5 -58.5 35.5 run function resource/effect/unlock_success
function resource/material/stone/ui/info
return 1
