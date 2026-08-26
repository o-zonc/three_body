# 얼어붙은 세계 3층 엘리베이터
# 3x3 승강장 중심: X=0, Z=0
# 승강장 블록: 1층 Y=67 / 2층 Y=73 / 3층 Y=79
# 플레이어 발: 1층 Y=68 / 2층 Y=74 / 3층 Y=80
# 점프: 위층 이동 / 웅크리기: 아래층 이동
# 얼어붙은 상점을 해금하면 3층까지 한 번에 사용할 수 있습니다.

execute unless score #GLOBAL current_dim matches 2 run return 0

# 현재 층을 먼저 판정하여 같은 tick에 왕복하는 것을 방지합니다.
tag @a remove frozen_elevator_floor_1
tag @a remove frozen_elevator_floor_2
tag @a remove frozen_elevator_floor_3
execute positioned -1 68 -1 as @a[dx=2,dy=1,dz=2] run tag @s add frozen_elevator_floor_1
execute positioned -1 74 -1 as @a[dx=2,dy=1,dz=2] run tag @s add frozen_elevator_floor_2
execute positioned -1 80 -1 as @a[dx=2,dy=1,dz=2] run tag @s add frozen_elevator_floor_3

# 잠금 상태에서는 아래층에서 점프로 호출했을 때 기존 엘리베이터 잠금 안내를 사용합니다.
execute as @a[tag=frozen_elevator_floor_1] if score @s elevator_jump > @s elevator_jump_prev unless score #frozen_shop unlock matches 1.. at @s run function elevator/locked

# 1층 -> 2층
execute as @a[tag=frozen_elevator_floor_1] if score @s elevator_jump > @s elevator_jump_prev if score #frozen_shop unlock matches 1.. at @s run function elevator/move {x:0,y:74,z:0}

# 2층 -> 1층
execute as @a[tag=shift,tag=frozen_elevator_floor_2] at @s run function elevator/move {x:0,y:68,z:0}

# 2층 -> 3층 (상점 해금 시 함께 개방되므로 별도 제한 없음)
execute as @a[tag=frozen_elevator_floor_2] if score @s elevator_jump > @s elevator_jump_prev at @s run function elevator/move {x:0,y:80,z:0}

# 3층 -> 2층
execute as @a[tag=shift,tag=frozen_elevator_floor_3] at @s run function elevator/move {x:0,y:74,z:0}

# 임시 층 태그 정리
tag @a remove frozen_elevator_floor_1
tag @a remove frozen_elevator_floor_2
tag @a remove frozen_elevator_floor_3
