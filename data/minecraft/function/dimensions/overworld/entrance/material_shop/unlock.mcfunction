execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_available_material_shop trial matches 1 run function trial/creation/lost
execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_available_material_shop trial matches 1 run return 0
execute if score #material_shop unlock matches 1 run return 0

data remove storage data tmp.cost
data remove storage data tmp.cost_original
data modify storage data tmp.cost set from storage data const.dimensions.overworld.entrance[{id:"material_shop"}].cost

# 해금 재료 소지 여부 확인
execute store result score #unlock_cost_check tmp run function product/check_cost

# 소지 시 해금
execute if score #unlock_cost_check tmp matches 1 run function product/take_cost
execute if score #unlock_cost_check tmp matches 1 run scoreboard players set #material_shop unlock 1
execute if score #unlock_cost_check tmp matches 1 as @a[tag=player] run function util/blank
execute if score #unlock_cost_check tmp matches 1 run return 1

# 미소지 시
execute unless score #unlock_cost_check tmp matches 1 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless score #unlock_cost_check tmp matches 1 run title @s actionbar "§c재료가 부족합니다."
execute unless score #unlock_cost_check tmp matches 1 run return 0

tellraw @s {"text":"나무 생산량 증폭","color":"gold","bold":true,shadow_color:[0, 0, 0, 0]}