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
# 다음 차원으로 이동
# ==========================================

function three_body:common/next

# ==========================================
# 멸망한 이전 차원의 상태 초기화
# ==========================================
# next가 플레이어를 다음 차원으로 이동시킨 뒤 실행하므로,
# 현재 차원의 state를 0으로 바꾸면 '멸망' 보스바가 연출 중에는 유지되고
# 전환이 끝난 뒤에만 다음 난세기까지 상태로 돌아갑니다.
execute if entity @a[nbt={Dimension:"minecraft:overworld"}] if score #GLOBAL state_overworld matches 2 run scoreboard players set #GLOBAL state_overworld 0
execute if entity @a[nbt={Dimension:"three_body:dried"}] if score #GLOBAL state_dried matches 2 run scoreboard players set #GLOBAL state_dried 0
execute if entity @a[nbt={Dimension:"three_body:frozen"}] if score #GLOBAL state_frozen matches 2 run scoreboard players set #GLOBAL state_frozen 0

# ==========================================
# 새 차원에서 시대 시스템 재개
# ==========================================

scoreboard players set #GLOBAL era_paused 0