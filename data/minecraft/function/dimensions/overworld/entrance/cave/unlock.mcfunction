execute if score #cave unlock matches 1 run return 0

data remove storage data tmp.cost
data remove storage data tmp.cost_original
data modify storage data tmp.cost set from storage data const.dimensions.overworld.entrance[{id:"cave"}].cost

# 업그레이드 재료 소지 여부 확인
execute store result score #cave_unlock_cost_check tmp run function resource/check_cost

# 소지 시 해금
execute if score #cave_unlock_cost_check tmp matches 1 run function resource/take_cost
execute if score #cave_unlock_cost_check tmp matches 1 run scoreboard players set #cave unlock 1
execute if score #cave_unlock_cost_check tmp matches 1 run scoreboard players set #y var 64000
function dimensions/nether/workshop/effect/5_1/effective
execute if score #cave_unlock_cost_check tmp matches 1 if score #5_1_effective tmp matches 1 run scoreboard players set #y var -64000
execute if score #cave_unlock_cost_check tmp matches 1 store result score #coal_remain generate run function resource/material/coal/value/regen_value
execute if score #cave_unlock_cost_check tmp matches 1 run scoreboard players operation #cave_material_regen_value tmp = #coal_remain generate
execute if score #cave_unlock_cost_check tmp matches 1 run function dimensions/overworld/shop/crystal_shop/apply/cave_material_regen_speed
execute if score #cave_unlock_cost_check tmp matches 1 run scoreboard players operation #coal_remain generate = #cave_material_regen_value tmp
execute if score #cave_unlock_cost_check tmp matches 1 store result score #iron_remain generate run function resource/material/iron/value/regen_value
execute if score #cave_unlock_cost_check tmp matches 1 run scoreboard players operation #cave_material_regen_value tmp = #iron_remain generate
execute if score #cave_unlock_cost_check tmp matches 1 run function dimensions/overworld/shop/crystal_shop/apply/cave_material_regen_speed
execute if score #cave_unlock_cost_check tmp matches 1 run scoreboard players operation #iron_remain generate = #cave_material_regen_value tmp
execute if score #cave_unlock_cost_check tmp matches 1 as @a[tag=player] run function util/blank
execute if score #cave_unlock_cost_check tmp matches 1 run return 1

# 미소지 시 
execute unless score #cave_unlock_cost_check tmp matches 1 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless score #cave_unlock_cost_check tmp matches 1 run title @s actionbar "§c재료가 부족합니다."
execute unless score #cave_unlock_cost_check tmp matches 1 run return 0
