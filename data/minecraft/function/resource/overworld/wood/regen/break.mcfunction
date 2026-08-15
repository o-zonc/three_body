execute if score #disable_wood_resourceion var matches 1 run return 0
# 나무 파괴 시

# 자원 상점 업그레이드로 인해 자원 획득량이 조절됨
scoreboard players operation #emotion_before_wood tmp = #wood material
execute store result score #wood_gain tmp run function dimensions/overworld/shop/material_shop/value/wood_value

scoreboard players operation #material_add_value tmp = #wood_gain tmp
function resource/add_material/wood
scoreboard players operation #emotion_delta tmp = #wood material
scoreboard players operation #emotion_delta tmp -= #emotion_before_wood tmp


# 나무 재생산 대기시간 시작
execute store result score #wood_remain generate run function resource/overworld/wood/value/regen_value



# 돌 해금 시 돌 재생산 카운트
execute if score #stone unlock matches 1 run function resource/overworld/wood/regen/stone_count
