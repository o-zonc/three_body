execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_available_crystal_cave_speed trial matches 1 run function trial/creation/lost
execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_available_crystal_cave_speed trial matches 1 run return 0
# 결정 상점 동굴 자원 재생산 시간 감소 업그레이드

function dimensions/overworld/shop/crystal_shop/value/cave_material_regen_speed_up_upgrade_cost

execute unless data storage data tmp.cost at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless data storage data tmp.cost run title @s actionbar "§c더 이상 업그레이드 할 수 없습니다."
execute unless data storage data tmp.cost run return 0

execute store result score #cave_material_regen_speed_up_upgrade_cost_check tmp run function product/check_cost

execute if score #cave_material_regen_speed_up_upgrade_cost_check tmp matches 1 run function product/take_upgrade_cost
execute if score #cave_material_regen_speed_up_upgrade_cost_check tmp matches 1 run scoreboard players add #cave_material_regen_speed_up_lvl crystal_shop 1
execute if score #cave_material_regen_speed_up_upgrade_cost_check tmp matches 1 at @s run playsound entity.ender_eye.death weather @s ~ ~ ~ 0.5 1.5
execute if score #cave_material_regen_speed_up_upgrade_cost_check tmp matches 1 run function dimensions/overworld/shop/crystal_shop/ui/cave_material_regen_speed_up
execute if score #trial_active trial matches 1 if score #trial_id trial matches 4 if score #cave_material_regen_speed_up_upgrade_cost_check tmp matches 1 run function trial/possibility/on_upgrade {id:11}
execute if score #cave_material_regen_speed_up_upgrade_cost_check tmp matches 1 run return 1

execute unless score #cave_material_regen_speed_up_upgrade_cost_check tmp matches 1 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless score #cave_material_regen_speed_up_upgrade_cost_check tmp matches 1 run title @s actionbar "§c재료가 부족합니다."
return 0
