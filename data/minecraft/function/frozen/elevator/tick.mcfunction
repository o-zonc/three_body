# 얼어붙은 세계 엘리베이터
# 3x3 승강장 중심: X=0, Z=0
# 점프: 위층 이동 / 웅크리기: 아래층 이동

execute unless score #GLOBAL current_dim matches 2 run return 0

# 기존 3층 엘리베이터
# 승강장 블록: 1층 Y=67 / 2층 Y=73 / 3층 Y=79
# 플레이어 발: 1층 Y=68 / 2층 Y=74 / 3층 Y=80
# 얼어붙은 상점 해금 필요

tag @a remove frozen_elevator_floor_1
tag @a remove frozen_elevator_floor_2
tag @a remove frozen_elevator_floor_3
execute positioned -1 68 -1 as @a[dx=2,dy=1,dz=2] run tag @s add frozen_elevator_floor_1
execute positioned -1 74 -1 as @a[dx=2,dy=1,dz=2] run tag @s add frozen_elevator_floor_2
execute positioned -1 80 -1 as @a[dx=2,dy=1,dz=2] run tag @s add frozen_elevator_floor_3

execute as @a[tag=frozen_elevator_floor_1] if score @s elevator_jump > @s elevator_jump_prev unless score #frozen_shop unlock matches 1.. at @s run function elevator/locked

execute as @a[tag=frozen_elevator_floor_1] if score @s elevator_jump > @s elevator_jump_prev if score #frozen_shop unlock matches 1.. at @s run function elevator/move {x:0,y:74,z:0}
execute as @a[tag=shift,tag=frozen_elevator_floor_2] at @s run function elevator/move {x:0,y:68,z:0}
execute as @a[tag=frozen_elevator_floor_2] if score @s elevator_jump > @s elevator_jump_prev at @s run function elevator/move {x:0,y:80,z:0}
execute as @a[tag=shift,tag=frozen_elevator_floor_3] at @s run function elevator/move {x:0,y:74,z:0}

tag @a remove frozen_elevator_floor_1
tag @a remove frozen_elevator_floor_2
tag @a remove frozen_elevator_floor_3

# 신규 2층 엘리베이터
# 승강장 블록: 아래층 Y=52 / 위층 Y=85
# 플레이어 발: 아래층 Y=53 / 위층 Y=86
# 별도 해금 조건 없음

tag @a remove frozen_elevator_deep_lower
tag @a remove frozen_elevator_deep_upper
execute positioned -1 53 -1 as @a[dx=2,dy=1,dz=2] run tag @s add frozen_elevator_deep_lower
execute positioned -1 86 -1 as @a[dx=2,dy=1,dz=2] run tag @s add frozen_elevator_deep_upper

# 아래층 -> 위층
execute as @a[tag=frozen_elevator_deep_lower] if score @s elevator_jump > @s elevator_jump_prev at @s run function elevator/move {x:0,y:86,z:0}

# 위층 -> 아래층
execute as @a[tag=shift,tag=frozen_elevator_deep_upper] at @s run function frozen/maze/exit

# 신규 엘리베이터 임시 태그 정리
tag @a remove frozen_elevator_deep_lower
tag @a remove frozen_elevator_deep_upper
