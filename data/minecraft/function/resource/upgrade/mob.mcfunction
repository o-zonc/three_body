# Pure resource upgrade: no trial, crystal shop, advancement, workshop, or compression modifiers.
execute unless data storage data tmp.cost run title @s actionbar "§c더 이상 업그레이드 할 수 없습니다."
execute unless data storage data tmp.cost run return 0
execute store result score #mob_regen_upgrade_cost_check tmp run function resource/check_cost
execute unless score #mob_regen_upgrade_cost_check tmp matches 1 run title @s actionbar "§c재료가 부족합니다."
execute unless score #mob_regen_upgrade_cost_check tmp matches 1 run return 0
function resource/cost/take
scoreboard players add #mob_regen_lvl upgrade 1
playsound entity.player.levelup weather @s ~ ~ ~ 0.8 1.2
return 1
