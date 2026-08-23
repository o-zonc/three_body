# 게임 시작 시 나무 자원을 해금한다. 목기 시대는 나무를 처음 획득할 때 시작된다.
execute if score #wood unlock matches 1 run return 0
scoreboard players set #wood unlock 1
execute in overworld run function resource/material/wood/place
execute in minecraft:overworld positioned 0.5 -58.5 35.5 run function resource/effect/unlock_success
return 1
