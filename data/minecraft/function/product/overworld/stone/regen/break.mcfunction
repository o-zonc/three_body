execute if score #disable_stone_production var matches 1 run return 0
execute unless score #stone unlock matches 1 run return 0
# 돌 파괴 시

# 자원 상점 업그레이드로 인해 자원 획득량이 조절됨
scoreboard players operation #emotion_before_stone tmp = #stone material
execute store result score #stone_gain tmp run function dimensions/overworld/shop/material_shop/value/stone_value
scoreboard players operation #material_add_value tmp = #stone_gain tmp
function product/add_material/stone
scoreboard players operation #emotion_delta tmp = #stone material
scoreboard players operation #emotion_delta tmp -= #emotion_before_stone tmp
scoreboard players set #emotion_weight tmp 2
scoreboard players operation #emotion_delta tmp *= #emotion_weight tmp
function trial/emotion/add_fervor

# 돌 재생산 카운트 설정
execute store result score #stone_remain generate run function product/overworld/stone/value/regen_value
