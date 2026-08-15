# 결정 상점 채광 속도 증폭 업그레이드

function dimensions/overworld/shop/crystal_shop/value/dig_speed_up_upgrade_cost

execute unless data storage data tmp.cost at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless data storage data tmp.cost run title @s actionbar "§c더 이상 업그레이드 할 수 없습니다."
execute unless data storage data tmp.cost run return 0

execute store result score #dig_speed_up_upgrade_cost_check tmp run function product/check_cost

execute if score #dig_speed_up_upgrade_cost_check tmp matches 1 run function product/take_upgrade_cost
execute if score #dig_speed_up_upgrade_cost_check tmp matches 1 run scoreboard players add #dig_speed_up_lvl crystal_shop 1
execute if score #dig_speed_up_upgrade_cost_check tmp matches 1 at @s run playsound entity.ender_eye.death weather @s ~ ~ ~ 0.5 1.5
execute if score #dig_speed_up_upgrade_cost_check tmp matches 1 as @s run function dimensions/overworld/shop/crystal_shop/apply/dig_speed
execute if score #dig_speed_up_upgrade_cost_check tmp matches 1 run function dimensions/overworld/shop/crystal_shop/ui/dig_speed_up
execute if score #dig_speed_up_upgrade_cost_check tmp matches 1 run return 1

execute unless score #dig_speed_up_upgrade_cost_check tmp matches 1 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless score #dig_speed_up_upgrade_cost_check tmp matches 1 run title @s actionbar "§c재료가 부족합니다."
return 0
