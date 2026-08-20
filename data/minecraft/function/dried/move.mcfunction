# 새 차원 진입 시 이전 멸망 효과가 남아 있지 않도록 안전하게 제거
effect clear @a blindness
effect clear @a darkness
title @a clear
function mover/local/recover

execute in dried run tp @a ~ 64 ~
gamerule advance_time true

function common/weather

# 방문 기록을 남기고, 현재 차원 상태를 '말라붙은 차원'으로 갱신합니다.
scoreboard players set #GLOBAL visited_dried 1
scoreboard players add #GLOBAL first_dried 1
scoreboard players set #GLOBAL current_dim 1
execute unless score #heat unlock matches 1 as @a at @s run function resource/effect/unlock_success
scoreboard players set #heat unlock 1
# TODO: 열기 자원 블록 좌표를 확정한 뒤 place 함수의 좌표 명령과 함께 아래 주석을 해제한다.
# execute in dried run function resource/material/heat/place
execute unless score #gold unlock matches 1 as @a[tag=player,nbt={Dimension:"minecraft:dried"}] run function resource/effect/unlock_success
scoreboard players set #gold unlock 1

# 새 차원은 항상 항성기에서 시작하며, 첫 시대의 타이머를 1200틱으로 초기화합니다.
scoreboard players set #GLOBAL state_dried 0
scoreboard players set #GLOBAL timer_dried 1200
bossbar set bossbar_dried max 1200

function story/overworld/age/check_modern_age
