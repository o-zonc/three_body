# THREE BODY TEST ENTRY
# --- 기본 테스트 진입점이다. ---
# 실제 게임 상태를 변경하지 않고 현재 시대 상태를 확인한다.
# 개별 테스트:
# /function test/pause
# /function test/disaster
# /function test/transition
# --- pause 테스트는 5초 후 자동으로 pause_check를 실행한다. ---

# 현재 상태 출력
tellraw @a {"text":"========== THREE BODY TEST ==========" ,"color":"gold"}
tellraw @a [{"text":"era_paused: ","color":"yellow"},{"score":{"name":"#GLOBAL","objective":"era_paused"}}]
tellraw @a [{"text":"current_dim: ","color":"yellow"},{"score":{"name":"#GLOBAL","objective":"current_dim"}}]
tellraw @a [{"text":"timer_overworld: ","color":"yellow"},{"score":{"name":"#GLOBAL","objective":"timer_overworld"}}]
tellraw @a [{"text":"timer_dried: ","color":"yellow"},{"score":{"name":"#GLOBAL","objective":"timer_dried"}}]
tellraw @a [{"text":"timer_frozen: ","color":"yellow"},{"score":{"name":"#GLOBAL","objective":"timer_frozen"}}]
tellraw @a [{"text":"state_overworld: ","color":"yellow"},{"score":{"name":"#GLOBAL","objective":"state_overworld"}}]
tellraw @a [{"text":"state_dried: ","color":"yellow"},{"score":{"name":"#GLOBAL","objective":"state_dried"}}]
tellraw @a [{"text":"state_frozen: ","color":"yellow"},{"score":{"name":"#GLOBAL","objective":"state_frozen"}}]
tellraw @a {"text":"====================================","color":"gold"}
