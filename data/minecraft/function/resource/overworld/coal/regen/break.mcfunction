execute if score #disable_coal_resourceion var matches 1 run return 0
execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_available_coal_resourceion trial matches 1 run return 0
execute unless score #cave unlock matches 1 run return 0
# 석탄 광석 파괴 시

# 자원 상점 업그레이드로 인해 자원 획득량이 조절됨
scoreboard players operation #emotion_before_coal tmp = #coal material
execute store result score #coal_gain tmp run function dimensions/overworld/shop/material_shop/value/coal_value
scoreboard players operation #material_add_value tmp = #coal_gain tmp
function resource/add_material/coal
scoreboard players operation #emotion_delta tmp = #coal material
scoreboard players operation #emotion_delta tmp -= #emotion_before_coal tmp
scoreboard players set #emotion_weight tmp 8
scoreboard players operation #emotion_delta tmp *= #emotion_weight tmp
function trial/emotion/add_fervor

execute store result score #coal_remain generate run function resource/overworld/coal/value/regen_value
scoreboard players operation #cave_material_regen_value tmp = #coal_remain generate
function dimensions/overworld/shop/crystal_shop/apply/cave_material_regen_speed
scoreboard players operation #coal_remain generate = #cave_material_regen_value tmp
