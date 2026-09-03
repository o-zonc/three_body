# 돌 재생은 의도적으로 나무 수확 1회당 한 번 진행되는 이벤트 방식 사용
execute if score #stone_remain generate matches 1.. run scoreboard players remove #stone_remain generate 1
execute if score #stone_remain generate matches ..0 run function resource/material/stone/place

