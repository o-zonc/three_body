# TEST: era_paused 타이머 정지 결과 확인

# 현재 값을 다시 저장한다.
scoreboard players operation #TEST timer_frozen_after = #GLOBAL timer_frozen
scoreboard players operation #TEST timer_dried_after = #GLOBAL timer_dried
scoreboard players operation #TEST timer_overworld_after = #GLOBAL timer_overworld

# 타이머가 완전히 동일한지 확인한다.
execute if score #TEST timer_frozen_before = #TEST timer_frozen_after run tellraw @a {"text":"[PASS] frozen timer 정지","color":"green"}
execute unless score #TEST timer_frozen_before = #TEST timer_frozen_after run tellraw @a {"text":"[FAIL] frozen timer가 변경되었습니다.","color":"red"}

execute if score #TEST timer_dried_before = #TEST timer_dried_after run tellraw @a {"text":"[PASS] dried timer 정지","color":"green"}
execute unless score #TEST timer_dried_before = #TEST timer_dried_after run tellraw @a {"text":"[FAIL] dried timer가 변경되었습니다.","color":"red"}

execute if score #TEST timer_overworld_before = #TEST timer_overworld_after run tellraw @a {"text":"[PASS] overworld timer 정지","color":"green"}
execute unless score #TEST timer_overworld_before = #TEST timer_overworld_after run tellraw @a {"text":"[FAIL] overworld timer가 변경되었습니다.","color":"red"}

# 테스트 종료 후 pause 상태는 유지한다.
# 실제 게임을 계속 진행하려면 /scoreboard players set #GLOBAL era_paused 0 을 실행한다.
tellraw @a {"text":"[TEST] pause_check 완료. era_paused는 1로 유지됩니다.","color":"gold"}
