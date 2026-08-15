# 3. 초기값 설정 (시작은 모두 항성기, 5분 뒤 첫 판정)
scoreboard players set #GLOBAL state_frozen 0
scoreboard players set #GLOBAL timer_frozen 6000
scoreboard players set #GLOBAL state_dried 0
scoreboard players set #GLOBAL timer_dried 6000
scoreboard players set #GLOBAL state_overworld 0
scoreboard players set #GLOBAL timer_overworld 6000
scoreboard players set #GLOBAL state_polar 0
scoreboard players set #GLOBAL state_dawn 0
scoreboard players set #20_CONSTANT timer_sec 20

# 4. 보스바 설정
bossbar set bossbar_frozen color blue
bossbar set bossbar_frozen style notched_6
bossbar set bossbar_frozen visible false
bossbar set bossbar_frozen max 6000
bossbar set bossbar_dried color yellow
bossbar set bossbar_dried style notched_10
bossbar set bossbar_dried visible false
bossbar set bossbar_dried max 6000
bossbar set bossbar_overworld color green
bossbar set bossbar_overworld style progress
bossbar set bossbar_overworld visible false
bossbar set bossbar_overworld max 6000

scoreboard players set #GLOBAL user_disaster 0

# 5. 차원 방문 스코어보드 초기화
scoreboard players set #GLOBAL visited_dried 0
scoreboard players set #GLOBAL visited_frozen 0
scoreboard players set #GLOBAL visited_overworld 0
scoreboard players set #GLOBAL visited_polar 0
scoreboard players set #GLOBAL first_frozen 0
scoreboard players set #GLOBAL first_dried 0
scoreboard players set #GLOBAL n_civil 1
scoreboard players set #GLOBAL current_dim 0

# 6. 문명 전환 시스템 관리 스코어보드 초기화
scoreboard players set #GLOBAL era_paused 1
scoreboard players set #disaster_running run 0

# 7. 스토리 관리 스코어보드 초기화
scoreboard players set #done intro 0
scoreboard players set #t intro 0

# 8. 자원 스코어보드 초기화
scoreboard players set #wood material 0
scoreboard players set #stone material 0
scoreboard players set #coal material 0
scoreboard players set #copper material 0
scoreboard players set #iron material 0
scoreboard players set #gold material 0
scoreboard players set #diamond material 0
scoreboard players set #emerald material 0
scoreboard players set #lapis material 0
scoreboard players set #heat material 0
scoreboard players set #cold material 0
scoreboard players set #information material 0
scoreboard players set #time material 0
scoreboard players set #world_eye material 0

# 9. 엘리베이터 스코어보드 초기화
scoreboard players set #GLOBAL elevator_unlocked 0