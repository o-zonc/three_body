# 새 차원 진입 시 이전 멸망 효과가 남아 있지 않도록 안전하게 제거
effect clear @a blindness
effect clear @a darkness
title @a clear
function mover/local/recover

execute in frozen run tp @a 0 67 0
function mover/items/arrive_other
gamerule advance_time true

# 방문 기록을 남기고, 현재 차원 상태를 '얼어붙은 차원'으로 갱신합니다.
scoreboard players set #GLOBAL visited_frozen 1
scoreboard players add #GLOBAL first_frozen 1
scoreboard players set #GLOBAL current_dim 2
execute unless score #cold unlock matches 1 in minecraft:frozen positioned 0.5 68.5 48.5 as @a[tag=player,nbt={Dimension:"minecraft:frozen"}] run function resource/effect/unlock_success
execute unless score #cold unlock matches 1 in frozen run function resource/material/cold/place
scoreboard players set #cold unlock 1
execute unless score #diamond unlock matches 1 in minecraft:frozen positioned 0.5 68.5 -11.5 as @a[tag=player,nbt={Dimension:"minecraft:frozen"}] run function resource/effect/unlock_success
execute unless score #diamond unlock matches 1 run function resource/material/diamond/place
scoreboard players set #diamond unlock 1

# 새 차원은 항상 항성기에서 시작하며, 첫 시대의 타이머를 1200틱으로 초기화합니다.
scoreboard players set #GLOBAL state_frozen 0
scoreboard players set #GLOBAL timer_frozen 1200
bossbar set bossbar_frozen max 1200

schedule function frozen/weather 1t
