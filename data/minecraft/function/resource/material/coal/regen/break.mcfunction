execute if score #disable_coal_production var matches 1 run return 0
execute unless score #cave unlock matches 1 run return 0
# 석탄 광석 파괴 시

# 자원 상점 업그레이드로 인해 자원 획득량이 조절됨
scoreboard players operation #emotion_before_coal tmp = #coal material
scoreboard players operation #material_add_value tmp = #coal_gain tmp
function resource/add_material/coal

execute store result score #coal_remain generate run function resource/material/coal/value/regen_value
scoreboard players operation #cave_material_regen_value tmp = #coal_remain generate
scoreboard players operation #coal_remain generate = #cave_material_regen_value tmp
