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

# 3. 확률 연산용 공용 변수
scoreboard objectives add roll_chance dummy
scoreboard objectives add timer_sec dummy

# 4. 초기값 설정 (시작은 모두 항성기, 5분 뒤 첫 판정)
scoreboard players set #GLOBAL state_frozen 0
scoreboard players set #GLOBAL timer_frozen 6000

scoreboard players set #GLOBAL state_dried 0
scoreboard players set #GLOBAL timer_dried 6000

scoreboard players set #GLOBAL state_overworld 0
scoreboard players set #GLOBAL timer_overworld 6000

scoreboard players set #GLOBAL state_polar 0
scoreboard players set #GLOBAL state_dawn 0

scoreboard players set #20_CONSTANT timer_sec 20

# 5. 보스바 로드
bossbar add three_body:bossbar_frozen {"text":"[ 얼어붙은 세계 ] 다음 난세기까지","color":"aqua"}
bossbar set three_body:bossbar_frozen color blue
bossbar set three_body:bossbar_frozen style notched_6
bossbar set three_body:bossbar_frozen visible false
bossbar set three_body:bossbar_frozen max 6000

bossbar add three_body:bossbar_dried {"text":"[ 메마른 세계 ] 다음 난세기까지","color":"gold"}
bossbar set three_body:bossbar_dried color yellow
bossbar set three_body:bossbar_dried style notched_10
bossbar set three_body:bossbar_dried visible false
bossbar set three_body:bossbar_dried max 6000

bossbar add three_body:bossbar_overworld {"text":"[ 오버월드 ] 다음 난세기까지","color": "dark_green"}
bossbar set three_body:bossbar_overworld color green
bossbar set three_body:bossbar_overworld style progress
bossbar set three_body:bossbar_overworld visible false
bossbar set three_body:bossbar_overworld max 6000