# interaction 엔티티는 실제로 플레이어가 클릭할 수 있는 주변 범위만 검사합니다.
# 기존에는 tick 실행 차원의 모든 interaction을 우/좌클릭 각각 한 번씩 전수 조사해
# 오버월드처럼 interaction 엔티티가 많은 차원에서 비용이 크게 증가했습니다.
# 8블록은 일반적인 상호작용 거리보다 넉넉한 안전 범위입니다.

# 우클릭
execute as @a at @s as @e[type=interaction,distance=..8] if data entity @s interaction run function interaction/right

# 좌클릭
execute as @a at @s as @e[type=interaction,distance=..8] if data entity @s attack run function interaction/left
