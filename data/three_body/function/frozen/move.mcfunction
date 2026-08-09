execute in three_body:frozen run tp @a ~ 64 ~
gamerule minecraft:advance_time true

# 방문 기록을 남기고, 현재 차원 상태를 '얼어붙은 차원'으로 갱신합니다.
scoreboard players set #GLOBAL visited_frozen 1
scoreboard players add #GLOBAL first_frozen 1
scoreboard players set #GLOBAL current_dim 2

schedule function three_body:frozen/weather 1t