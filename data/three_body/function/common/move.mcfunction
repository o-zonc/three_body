execute in overworld run tp @a ~ -60 ~
gamerule minecraft:advance_time true

# 방문 기록을 남기고, 현재 차원 상태를 '오버월드'로 갱신합니다.
# 이 갱신이 누락되면 다음 차원 이동 시 현재 위치를 잘못 판단하여 이동이 실패하는 것처럼 보일 수 있습니다.
scoreboard players set #GLOBAL visited_overworld 1
scoreboard players set #GLOBAL current_dim 0

function three_body:common/weather