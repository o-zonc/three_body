# 새 차원 진입 시 이전 멸망 효과가 남아 있지 않도록 안전하게 제거
effect clear @a blindness
effect clear @a darkness
execute unless entity @a[tag=accelerator_experiment_running] run title @a clear
function mover/local/recover

# 여명 차원에서 다른 차원으로 떠나는 경우 깨달음을 회수한다.
execute if score #GLOBAL current_dim matches 4 run function dawn/cleanup_epiphany

execute in dried run tp @a 0 64 0
execute in dried run weather clear
execute in dried run time rate 1
# 도착 경로와 관계없이 이 차원에서 채굴 가능한 자원이 없다면 긴급 귀환 수단을 지급한다.
# 이 조건이 성립하면 같은 진입의 시간 정지 인위적 이동 조건은 처리하지 않는다.
function item/give/check_overworld_escape_unmineable
execute unless score #tool upgrade matches ..6 as @a[tag=player,gamemode=adventure,nbt={Dimension:"minecraft:dried"}] run function item/give/overworld_escape_paused
function mover/items/arrive_other
gamerule advance_time true

# 방문 기록을 남기고, 현재 차원 상태를 '말라붙은 차원'으로 갱신한다.
scoreboard players set #GLOBAL visited_dried 1
scoreboard players add #GLOBAL first_dried 1
scoreboard players set #GLOBAL current_dim 1
execute unless score #heat unlock matches 1 as @a at @s run function resource/effect/unlock_success
execute unless score #heat unlock matches 1 in minecraft:dried run function resource/material/heat/place
scoreboard players set #heat unlock 1
execute unless score #gold unlock matches 1 as @a[tag=player,nbt={Dimension:"minecraft:dried"}] run function resource/effect/unlock_success
scoreboard players set #gold unlock 1
# 메마른 세계에 진입할 때마다 금 고정 노드를 실제 블록으로 복구하고 상태를 동기화한다.
execute in minecraft:dried run setblock 6 65 0 minecraft:raw_gold_block replace
scoreboard players reset #gold_remain generate
scoreboard players set #gold_present_prev var 1
scoreboard players set #gold_automated_harvest var 0
scoreboard players reset @a gold_node_mined

# 새 차원은 항상 항성기에서 시작하며, 첫 시대의 타이머를 1200틱으로 초기화한다.
scoreboard players set #GLOBAL state_dried 0
scoreboard players set #GLOBAL timer_dried 1200
bossbar set bossbar_dried max 1200
