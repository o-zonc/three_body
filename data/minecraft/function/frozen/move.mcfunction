# 새 차원 진입 시 이전 멸망 효과가 남아 있지 않도록 안전하게 제거
effect clear @a blindness
effect clear @a darkness
title @a clear
function mover/local/recover

# 여명 차원에서 다른 차원으로 떠나는 경우 깨달음을 회수한다.
execute if score #GLOBAL current_dim matches 4 run function dawn/cleanup_epiphany

execute in frozen run tp @a 0 67 0
execute in frozen run weather rain
execute in frozen run time rate 1

# 시간이 정지된 상태에서 차원 이동기 없이 진입했다면 긴급 귀환 수단을 지급합니다.
execute as @a[tag=player,gamemode=adventure,nbt={Dimension:"minecraft:frozen"}] run function item/give/overworld_escape_paused
# 도착 경로와 관계없이 이 차원에서 채굴 가능한 자원이 없다면 긴급 귀환 수단을 지급합니다.
# 시간 정지 예외 지급이 먼저 처리된 플레이어는 여기서 다시 지급하지 않습니다.
execute if score #tool upgrade matches ..6 as @a[tag=player,tag=!overworld_escape_given,gamemode=adventure,nbt={Dimension:"minecraft:frozen"}] run function item/give/overworld_escape
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
scoreboard players set #diamond unlock 1
# 얼어붙은 세계에 진입할 때마다 다이아몬드 고정 노드를 실제 블록으로 복구하고 상태를 동기화합니다.
execute in minecraft:frozen run setblock 0 68 -12 minecraft:diamond_block replace
scoreboard players reset #diamond_remain generate
scoreboard players set #diamond_present_prev var 1
scoreboard players set #diamond_automated_harvest var 0
scoreboard players reset @a diamond_node_mined

# 새 차원은 항상 항성기에서 시작하며, 첫 시대의 타이머를 1200틱으로 초기화합니다.
scoreboard players set #GLOBAL state_frozen 0
scoreboard players set #GLOBAL timer_frozen 1200
bossbar set bossbar_frozen max 1200
