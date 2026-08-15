execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_available_wood_regen trial matches 1 run function trial/creation/lost
execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_available_wood_regen trial matches 1 run return 0
data remove storage data tmp.cost
data remove storage data tmp.cost_original
function resource/overworld/wood/value/regen_upgrade_cost
function dimensions/overworld/shop/crystal_shop/value/apply_material_regen_upgrade_cost_down

# cost 값이 없다면 더 이상 업그레이드가 불가능하다는 뜻
execute unless data storage data tmp.cost at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless data storage data tmp.cost run title @s actionbar "§c더 이상 업그레이드 할 수 없습니다."
execute unless data storage data tmp.cost run return 0

# 업그레이드 재료 소지 여부 확인
execute store result score #wood_regen_upgrade_cost_check tmp run function resource/check_cost

# 소지 시 업그레이드
execute if score #wood_regen_upgrade_cost_check tmp matches 1 run function resource/take_upgrade_cost
execute if score #wood_regen_upgrade_cost_check tmp matches 1 run scoreboard players add #wood_regen_lvl upgrade 1
execute if score #wood_regen_upgrade_cost_check tmp matches 1 run playsound entity.ender_eye.death weather @a[tag=player] 0.5 1.5 4.5 1 0.8
execute if score #wood_regen_upgrade_cost_check tmp matches 1 run playsound block.respawn_anchor.charge weather @a[tag=player] 0.5 1.5 4.5 1 2
execute if score #wood_regen_upgrade_cost_check tmp matches 1 run particle end_rod 0.5 1.5 4.5 0.3 0.3 0.3 0.4 30 force @a[tag=player]
execute if score #wood_regen_upgrade_cost_check tmp matches 1 as @a[tag=player] run function resource/overworld/wood/ui/info
execute if score #trial_active trial matches 1 if score #trial_id trial matches 4 if score #wood_regen_upgrade_cost_check tmp matches 1 run function trial/possibility/on_upgrade {id:1}
execute if score #wood_regen_upgrade_cost_check tmp matches 1 run return 1

# 미소지 시 
execute unless score #wood_regen_upgrade_cost_check tmp matches 1 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless score #wood_regen_upgrade_cost_check tmp matches 1 run title @s actionbar "§c재료가 부족합니다."
execute unless score #wood_regen_upgrade_cost_check tmp matches 1 run return 0
