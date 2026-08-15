execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_available_crystal_obsidian_max trial matches 1 run function trial/creation/lost
execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_available_crystal_obsidian_max trial matches 1 run return 0
# 결정 상점 흑요석 최대 보유량 업그레이드

function dimensions/overworld/shop/crystal_shop/value/obsidian_max_up_upgrade_cost

execute unless data storage data tmp.cost at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless data storage data tmp.cost run title @s actionbar "§c더 이상 업그레이드 할 수 없습니다."
execute unless data storage data tmp.cost run return 0

execute store result score #obsidian_max_up_upgrade_cost_check tmp run function product/check_cost

execute if score #obsidian_max_up_upgrade_cost_check tmp matches 1 run function product/take_upgrade_cost
execute if score #obsidian_max_up_upgrade_cost_check tmp matches 1 run scoreboard players add #obsidian_max_up_lvl crystal_shop 1
execute if score #obsidian_max_up_upgrade_cost_check tmp matches 1 at @s run playsound entity.ender_eye.death weather @s ~ ~ ~ 0.5 1.5
execute if score #obsidian_max_up_upgrade_cost_check tmp matches 1 run function product/overworld/obsidian/lock/update
execute if score #obsidian_max_up_upgrade_cost_check tmp matches 1 run function dimensions/overworld/shop/crystal_shop/ui/obsidian_max_up
execute if score #obsidian_max_up_upgrade_cost_check tmp matches 1 run return 1

execute unless score #obsidian_max_up_upgrade_cost_check tmp matches 1 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless score #obsidian_max_up_upgrade_cost_check tmp matches 1 run title @s actionbar "§c재료가 부족합니다."
return 0
