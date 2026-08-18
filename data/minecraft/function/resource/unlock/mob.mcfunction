# Pure resource unlock.
execute if score #mob unlock matches 1 run return 0
data remove storage data tmp.cost
data modify storage data tmp.cost set from storage data const.resource.mob.unlock_cost
execute store result score #mob_unlock_cost_check tmp run function resource/check_cost
execute unless score #mob_unlock_cost_check tmp matches 1 run title @s actionbar "§c재료가 부족합니다."
execute unless score #mob_unlock_cost_check tmp matches 1 run return 0
function resource/cost/take
scoreboard players set #mob unlock 1
playsound entity.player.levelup weather @s ~ ~ ~ 0.8 1.2
return 1
