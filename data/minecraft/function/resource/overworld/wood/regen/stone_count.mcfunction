# 나무 파괴 시 돌 재생산 카운트

# 카운트가 남았으면 차감
execute if score #stone_remain generate matches 1.. run scoreboard players remove #stone_remain generate 1

# 모두 세었으면 돌 재생산
execute if score #stone_remain generate matches ..0 run function resource/overworld/stone/regen/place
execute if score #stone_remain generate matches ..0 run scoreboard players reset #stone_remain generate