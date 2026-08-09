execute in three_body:dried run tp @a ~ 64 ~
gamerule minecraft:advance_time true

# 방문 기록을 남기고, 현재 차원 상태를 '말라붙은 차원'으로 갱신합니다.
scoreboard players set #GLOBAL visited_dried 1
scoreboard players add #GLOBAL first_dried 1
scoreboard players set #GLOBAL current_dim 1