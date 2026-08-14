# wood unlock skeleton
# ==================================================
# Unlock wood
# ==================================================

# 이미 해금되어 있으면 종료
execute if score #wood unlock matches 1.. run return 0

# wood 해금 비용을 가져온다.
# TODO:
# function three_body:resource/wood/value/unlock_cost

# 비용 검사
function three_body:resource/check_cost

# 비용 부족
execute unless score #cost_check tmp matches 1 run return 0

# 비용 차감
function three_body:resource/take_cost

# 해금
scoreboard players set #wood unlock 1

# 최초 자원 생성
function three_body:resource/wood/regen/place

# TODO:
# 해금 사운드
# TODO:
# 해금 파티클