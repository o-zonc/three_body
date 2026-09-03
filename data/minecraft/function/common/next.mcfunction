# 세 주요 차원 방문을 모두 마치면 극야로 이동
execute if score #GLOBAL visited_polar matches 1.. run return run function dawn/move
execute if score #GLOBAL visited_dried matches 1.. if score #GLOBAL visited_frozen matches 1.. if score #GLOBAL visited_overworld matches 1.. run return run function polarnight/move

# 방문하지 않은 차원을 나타내는 marker 생성
execute at @a[limit=1] run summon marker ~ ~ ~ {Tags:["next_dim_selector", "dim_dried"]}
execute at @a[limit=1] run summon marker ~ ~ ~ {Tags:["next_dim_selector", "dim_frozen"]}
execute at @a[limit=1] run summon marker ~ ~ ~ {Tags:["next_dim_selector", "dim_overworld"]}

# 현재 있는 차원을 다음 목적지 후보에서 제외하기 위해, 해당 차원의 마커에 'current' 태그를 붙이다.
# 이 방식은 kill을 사용하지 않아 혹시 모를 타이밍 문제를 방지하고 더 안정적이다.
# #GLOBAL current_dim 스코어보드 값에 따라 태그를 적용한다. (0: 오버월드, 1: 메마른 세계, 2: 얼어붙은 세계)
execute if score #GLOBAL current_dim matches 0 run tag @e[type=marker,tag=next_dim_selector,tag=dim_overworld,limit=1] add current
execute if score #GLOBAL current_dim matches 1 run tag @e[type=marker,tag=next_dim_selector,tag=dim_dried,limit=1] add current
execute if score #GLOBAL current_dim matches 2 run tag @e[type=marker,tag=next_dim_selector,tag=dim_frozen,limit=1] add current

# 'current' 태그가 없는 나머지 마커 중에서 무작위로 하나를 골라 이동 함수를 실행한다.
execute as @e[type=marker,tag=next_dim_selector,tag=!current,sort=random,limit=1] run function common/run_move

# 차원 확인용 marker 정리
kill @e[type=marker,tag=next_dim_selector]