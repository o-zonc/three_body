execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_available_blaze_drop trial matches 1 run function trial/creation/lost
execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_available_blaze_drop trial matches 1 run return 0
function product/nether/blaze/value/drop_upgrade_cost

# cost 값이 없다면 더 이상 업그레이드가 불가능하다는 뜻
execute unless data storage data tmp.cost at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless data storage data tmp.cost run title @s actionbar "§c더 이상 업그레이드 할 수 없습니다."
execute unless data storage data tmp.cost run return 0

# 업그레이드 재료 소지 여부 확인
execute store result score #blaze_drop_upgrade_cost_check tmp run function product/check_cost

# 소지 시 업그레이드
execute if score #blaze_drop_upgrade_cost_check tmp matches 1 run function product/take_upgrade_cost
execute if score #blaze_drop_upgrade_cost_check tmp matches 1 run scoreboard players add #blaze_drop_lvl upgrade 1
execute if score #blaze_drop_upgrade_cost_check tmp matches 1 run playsound entity.ender_eye.death weather @a[tag=player] -76.5 1.5 13.5 1 0.8
execute if score #blaze_drop_upgrade_cost_check tmp matches 1 run playsound block.respawn_anchor.charge weather @a[tag=player] -76.5 1.5 13.5 1 2
execute if score #blaze_drop_upgrade_cost_check tmp matches 1 run particle end_rod -76.5 1.5 13.5 0.3 0.3 0.3 0.4 30 force @a[tag=player]
execute if score #blaze_drop_upgrade_cost_check tmp matches 1 as @a[tag=player] run function product/nether/blaze/ui/info
execute if score #trial_active trial matches 1 if score #trial_id trial matches 4 if score #blaze_drop_upgrade_cost_check tmp matches 1 run function trial/possibility/on_upgrade {id:10}
execute if score #blaze_drop_upgrade_cost_check tmp matches 1 run return 1

# 미소지 시
execute unless score #blaze_drop_upgrade_cost_check tmp matches 1 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless score #blaze_drop_upgrade_cost_check tmp matches 1 run title @s actionbar "§c재료가 부족합니다."
execute unless score #blaze_drop_upgrade_cost_check tmp matches 1 run return 0
