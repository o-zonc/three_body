# 결정 상점 자원 재생산 업그레이드 비용 감소 업그레이드

function dimensions/overworld/shop/crystal_shop/value/material_regen_upgrade_cost_down_upgrade_cost

execute unless data storage data tmp.cost at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless data storage data tmp.cost run title @s actionbar "§c더 이상 업그레이드 할 수 없습니다."
execute unless data storage data tmp.cost run return 0

execute store result score #material_regen_upgrade_cost_down_upgrade_cost_check tmp run function product/check_cost

execute if score #material_regen_upgrade_cost_down_upgrade_cost_check tmp matches 1 run function product/take_upgrade_cost
execute if score #material_regen_upgrade_cost_down_upgrade_cost_check tmp matches 1 run scoreboard players add #material_regen_upgrade_cost_down_lvl crystal_shop 1
execute if score #material_regen_upgrade_cost_down_upgrade_cost_check tmp matches 1 at @s run playsound entity.ender_eye.death weather @s ~ ~ ~ 0.5 1.5
execute if score #material_regen_upgrade_cost_down_upgrade_cost_check tmp matches 1 run function dimensions/overworld/shop/crystal_shop/ui/material_regen_upgrade_cost_down
execute if score #material_regen_upgrade_cost_down_upgrade_cost_check tmp matches 1 run return 1

execute unless score #material_regen_upgrade_cost_down_upgrade_cost_check tmp matches 1 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless score #material_regen_upgrade_cost_down_upgrade_cost_check tmp matches 1 run title @s actionbar "§c재료가 부족합니다."
return 0
