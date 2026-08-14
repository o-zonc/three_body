# 1. 각 차원별 시대 상태 스코어보드 (0: 항성기, 1: 난세기)
scoreboard objectives add state_frozen dummy
scoreboard objectives add state_dried dummy
scoreboard objectives add state_overworld dummy
scoreboard objectives add state_polar dummy
scoreboard objectives add state_dawn dummy

# 2. 각 차원별 타이머 스코어보드 (다음 시대 판정까지 남은 틱)
scoreboard objectives add timer_frozen dummy
scoreboard objectives add timer_dried dummy
scoreboard objectives add timer_overworld dummy
scoreboard objectives add timer_frozen_before dummy
scoreboard objectives add timer_dried_before dummy
scoreboard objectives add timer_overworld_before dummy
scoreboard objectives add timer_frozen_after dummy
scoreboard objectives add timer_dried_after dummy
scoreboard objectives add timer_overworld_after dummy

# 3. 확률 연산용 공용 변수
scoreboard objectives add roll_chance dummy
scoreboard objectives add timer_sec dummy

# 4. 보스바 로드
bossbar add three_body:bossbar_frozen {"text":"[ 얼어붙은 세계 ] 다음 난세기까지","color":"aqua"}
bossbar add three_body:bossbar_dried {"text":"[ 메마른 세계 ] 다음 난세기까지","color":"gold"}
bossbar add three_body:bossbar_overworld {"text":"[ 오버월드 ] 다음 난세기까지","color":"dark_green"}

scoreboard objectives add user_disaster dummy

# 5. 차원 방문 스코어보드
scoreboard objectives add visited_overworld dummy
scoreboard objectives add visited_frozen dummy
scoreboard objectives add visited_dried dummy
scoreboard objectives add visited_polar dummy
scoreboard objectives add first_frozen dummy
scoreboard objectives add first_dried dummy
scoreboard objectives add n_civil dummy
scoreboard objectives add current_dim dummy
scoreboard objectives add sneaking_prev dummy

# 6. 문명 전환 시스템 관리 스코어보드
scoreboard objectives add era_paused dummy
scoreboard objectives add run dummy

# 7. 스토리 관리 스코어보드
scoreboard objectives add intro dummy
scoreboard objectives add intro_skip trigger
scoreboard objectives add tutorial trigger

# 8. 자원 관리 스코어보드
scoreboard objectives add material dummy
scoreboard objectives add material_unlocked dummy
scoreboard objectives add material_display dummy
scoreboard objectives modify material_display displayname {"text":"자원","color":"gold"}
scoreboard objectives setdisplay sidebar material_display

# Material API / resource system working state
scoreboard objectives add resource_test dummy
scoreboard objectives add generate dummy
scoreboard objectives add upgrade dummy
scoreboard objectives add tmp dummy

# Resource configuration
function three_body:resource/config/init

# 9. 해금 시스템
function three_body:unlock/init

# 10. 엘리베이터 스코어보드
scoreboard objectives add elevator_unlocked dummy
scoreboard objectives add elevator_jump minecraft.custom:minecraft.jump
scoreboard objectives add elevator_jump_prev dummy
