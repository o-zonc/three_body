# 새 차원 진입 시 이전 멸망 효과가 남아 있지 않도록 안전하게 제거
effect clear @a blindness
effect clear @a darkness
title @a clear
function mover/local/recover

# 여명 차원에서 다른 차원으로 떠나는 경우 깨달음을 회수한다.
execute if score #GLOBAL current_dim matches 4 run function dawn/cleanup_epiphany

execute in dried run tp @a 0 64 0
execute in dried run weather clear
execute in dried run time rate 1
# 도착 경로와 관계없이 이 차원에서 채굴 가능한 자원이 없다면 긴급 귀환 수단을 지급합니다.
execute if score #tool upgrade matches ..3 as @a[tag=player,gamemode=adventure,nbt={Dimension:"minecraft:dried"}] run function item/give/overworld_escape
function mover/items/arrive_other
gamerule advance_time true

# 방문 기록을 남기고, 현재 차원 상태를 '말라붙은 차원'으로 갱신합니다.
scoreboard players set #GLOBAL visited_dried 1
scoreboard players add #GLOBAL first_dried 1
scoreboard players set #GLOBAL current_dim 1
execute unless score #heat unlock matches 1 as @a at @s run function resource/effect/unlock_success
execute unless score #heat unlock matches 1 in minecraft:dried run function resource/material/heat/place
scoreboard players set #heat unlock 1
execute unless score #gold unlock matches 1 as @a[tag=player,nbt={Dimension:"minecraft:dried"}] run function resource/effect/unlock_success
execute unless score #gold unlock matches 1 in minecraft:dried run function resource/material/gold/place
scoreboard players set #gold unlock 1

# 새 차원은 항상 항성기에서 시작하며, 첫 시대의 타이머를 1200틱으로 초기화합니다.
scoreboard players set #GLOBAL state_dried 0
scoreboard players set #GLOBAL timer_dried 1200
bossbar set bossbar_dried max 1200
