execute if score #disable_iron_resourceion var matches 1 run return 0
execute unless score #cave unlock matches 1 run return 0
# 철 광석 파괴 시

# 자원 상점 업그레이드로 인해 자원 획득량이 조절됨
scoreboard players operation #emotion_before_iron tmp = #iron material
execute store result score #iron_gain tmp run function dimensions/overworld/shop/material_shop/value/iron_value
scoreboard players operation #material_add_value tmp = #iron_gain tmp
function resource/add_material/iron

execute store result score #iron_remain generate run function resource/overworld/iron/value/regen_value
scoreboard players operation #cave_material_regen_value tmp = #iron_remain generate
function dimensions/overworld/shop/crystal_shop/apply/cave_material_regen_speed
scoreboard players operation #iron_remain generate = #cave_material_regen_value tmp
