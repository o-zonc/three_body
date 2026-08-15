# 새 차원 진입 시 이전 멸망 효과가 남아 있지 않도록 안전하게 제거
effect clear @a blindness
effect clear @a darkness
title @a clear

execute in dried run tp @a ~ 64 ~
gamerule advance_time true

# 방문 기록을 남기고, 현재 차원 상태를 '말라붙은 차원'으로 갱신합니다.
scoreboard players set #GLOBAL visited_dried 1
scoreboard players add #GLOBAL first_dried 1
scoreboard players set #GLOBAL current_dim 1

# 새 차원은 항상 항성기에서 시작하며, 첫 시대의 타이머를 1200틱으로 초기화합니다.
scoreboard players set #GLOBAL state_dried 0
scoreboard players set #GLOBAL timer_dried 1200
bossbar set bossbar_dried max 1200

scoreboard players set #GLOBAL era_paused 0
