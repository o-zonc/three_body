# ==========================================
# 멸망 연출 종료
# ==========================================

# 화면 효과 제거
effect clear @a blindness
effect clear @a darkness

# title 연출 제거
title @a clear

# ==========================================
# 이전 차원의 예약 작업 정리
# ==========================================

# 얼어붙은 세계의 지속적인 날씨 함수
schedule clear three_body:frozen/weather

# 혹시 남아 있는 이전 차원의 전환 예약 제거
schedule clear three_body:common/next

# ==========================================
# 멸망한 이전 차원의 상태 초기화
# ==========================================
# 이 함수가 호출되는 시점은 120틱의 멸망 연출이 끝난 뒤입니다.
# current_dim은 아직 '멸망한 이전 차원'을 가리키므로,
# 다음 차원으로 이동하기 전에 해당 차원의 state만 0으로 되돌립니다.
execute if score #GLOBAL current_dim matches 0 if score #GLOBAL state_overworld matches 2 run scoreboard players set #GLOBAL state_overworld 0
execute if score #GLOBAL current_dim matches 1 if score #GLOBAL state_dried matches 2 run scoreboard players set #GLOBAL state_dried 0
execute if score #GLOBAL current_dim matches 2 if score #GLOBAL state_frozen matches 2 run scoreboard players set #GLOBAL state_frozen 0

# ==========================================
# 다음 차원으로 이동
# ==========================================

function three_body:common/next

# ==========================================
# 새 차원에서 시대 시스템 재개
# ==========================================

scoreboard players set #GLOBAL era_paused 0
scoreboard players set #disaster_running run 0