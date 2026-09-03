# TEST: era_paused 타이머 정지

# 테스트 시작 시 이전 pause 상태를 확실하게 정리한다.
scoreboard players set #GLOBAL era_paused 1

# 현재 타이머 값을 저장한다.
scoreboard players operation #TEST timer_frozen_before = #GLOBAL timer_frozen
scoreboard players operation #TEST timer_dried_before = #GLOBAL timer_dried
scoreboard players operation #TEST timer_overworld_before = #GLOBAL timer_overworld

# 테스트 중 다른 테스트 예약과 충돌하지 않도록 기존 검사 예약을 제거한다.
schedule clear test/pause_check

# 5초 후 동일한 값을 비교한다.
schedule function test/pause_check 5s

tellraw @a {"text":"[TEST] era_paused = 1","color":"gold"}
tellraw @a {"text":"[TEST] 5초 동안 모든 시대 타이머가 유지되어야 합니다.","color":"yellow"}
tellraw @a {"text":"[TEST] /function test/pause_check 를 직접 실행해도 됩니다.","color":"gray"}
