# drill 속도 업그레이드

function dimensions/overworld/drill/value/speed_upgrade_cost

execute unless data storage data tmp.cost at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless data storage data tmp.cost run title @s actionbar "§c더 이상 속도를 업그레이드할 수 없습니다."
execute unless data storage data tmp.cost run return 0

execute store result score #drill_speed_upgrade_cost_check tmp run function resource/check_cost

execute if score #drill_speed_upgrade_cost_check tmp matches 1 run function resource/take_upgrade_cost
execute if score #drill_speed_upgrade_cost_check tmp matches 1 run scoreboard players add #drill_speed_lvl upgrade 1
execute if score #drill_speed_upgrade_cost_check tmp matches 1 at @s run playsound entity.ender_eye.death weather @s ~ ~ ~ 0.5 1.5
execute if score #drill_speed_upgrade_cost_check tmp matches 1 run function dimensions/overworld/drill/ui/info
execute if score #drill_speed_upgrade_cost_check tmp matches 1 run return 1

execute unless score #drill_speed_upgrade_cost_check tmp matches 1 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless score #drill_speed_upgrade_cost_check tmp matches 1 run title @s actionbar "§c재료가 부족합니다."
return 0
