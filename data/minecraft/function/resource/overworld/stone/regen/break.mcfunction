execute if score #disable_stone_resourceion var matches 1 run return 0
execute unless score #stone unlock matches 1 run return 0
# 돌 파괴 시

# 자원 상점 업그레이드로 인해 자원 획득량이 조절됨
scoreboard players operation #emotion_before_stone tmp = #stone material
execute store result score #stone_gain tmp run function dimensions/overworld/shop/material_shop/value/stone_value
scoreboard players operation #material_add_value tmp = #stone_gain tmp
function resource/add_material/stone

# 돌 재생산 카운트 설정
execute store result score #stone_remain generate run function resource/overworld/stone/value/regen_value
