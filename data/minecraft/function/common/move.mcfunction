# 새 차원 진입 시 이전 멸망 효과가 남아 있지 않도록 안전하게 제거
effect clear @a blindness
effect clear @a darkness
title @a clear

# 여명 차원에서 다른 차원으로 떠나는 경우 깨달음을 회수한다.
execute if score #GLOBAL current_dim matches 4 run function dawn/cleanup_epiphany

execute in overworld run tp @a 0 -59 0
execute in overworld run weather clear
function mover/local/restore
gamerule advance_time true

# 방문 기록을 남기고, 현재 차원 상태를 '오버월드'로 갱신합니다.
# 이 갱신이 누락되면 다음 차원 이동 시 현재 위치를 잘못 판단하여 이동이 실패하는 것처럼 보일 수 있습니다.
scoreboard players set #GLOBAL visited_overworld 1
scoreboard players set #GLOBAL current_dim 0

# 새 차원은 항상 항성기에서 시작하며, 첫 시대의 타이머를 1200틱으로 초기화합니다.
scoreboard players set #GLOBAL state_overworld 0
scoreboard players set #GLOBAL timer_overworld 1200
bossbar set bossbar_overworld max 1200
