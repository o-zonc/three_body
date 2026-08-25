# 얼어붙은 세계 2층 엘리베이터
# 3x3 승강장 중심: X=0, Z=0
# 아래층 플레이어 Y=67 / 위층 플레이어 Y=73
# 점프: 위층 이동 / 웅크리기: 아래층 이동
# 얼어붙은 상점 해금(#frozen_shop unlock)과 함께 사용할 수 있습니다.

execute unless score #GLOBAL current_dim matches 2 run return 0

# 현재 층을 먼저 판정하여 같은 tick에 왕복하는 것을 방지합니다.
tag @a remove frozen_elevator_floor_1
tag @a remove frozen_elevator_floor_2
execute as @a[nbt={Dimension:"minecraft:frozen"},x=-1,y=67,z=-1,dx=2,dy=0,dz=2] run tag @s add frozen_elevator_floor_1
execute as @a[nbt={Dimension:"minecraft:frozen"},x=-1,y=73,z=-1,dx=2,dy=0,dz=2] run tag @s add frozen_elevator_floor_2

# 잠금 상태에서는 아래층에서 점프로 호출했을 때 기존 엘리베이터 잠금 안내를 사용합니다.
execute as @a[tag=frozen_elevator_floor_1] if score @s elevator_jump > @s elevator_jump_prev unless score #frozen_shop unlock matches 1.. at @s run function elevator/locked

# 아래층 -> 위층
execute as @a[tag=frozen_elevator_floor_1] if score @s elevator_jump > @s elevator_jump_prev if score #frozen_shop unlock matches 1.. at @s run particle end_rod ~ ~0.1 ~ 0.45 0.1 0.45 0.02 12 force
execute as @a[tag=frozen_elevator_floor_1] if score @s elevator_jump > @s elevator_jump_prev if score #frozen_shop unlock matches 1.. at @s run playsound block.note_block.pling player @s ~ ~ ~ 0.8 0.75
execute as @a[tag=frozen_elevator_floor_1] if score @s elevator_jump > @s elevator_jump_prev if score #frozen_shop unlock matches 1.. run tp @s 0 73 0
execute as @a[tag=frozen_elevator_floor_1] if score @s elevator_jump > @s elevator_jump_prev if score #frozen_shop unlock matches 1.. at @s run particle end_rod ~ ~0.1 ~ 0.45 0.1 0.45 0.02 12 force
execute as @a[tag=frozen_elevator_floor_1] if score @s elevator_jump > @s elevator_jump_prev if score #frozen_shop unlock matches 1.. at @s run playsound block.note_block.pling player @s ~ ~ ~ 0.8 1.0

# 위층 -> 아래층
execute as @a[tag=shift,tag=frozen_elevator_floor_2] at @s run particle end_rod ~ ~0.1 ~ 0.45 0.1 0.45 0.02 12 force
execute as @a[tag=shift,tag=frozen_elevator_floor_2] at @s run playsound block.note_block.pling player @s ~ ~ ~ 0.8 0.75
execute as @a[tag=shift,tag=frozen_elevator_floor_2] run tp @s 0 67 0
execute as @a[tag=shift,tag=frozen_elevator_floor_2] at @s run particle end_rod ~ ~0.1 ~ 0.45 0.1 0.45 0.02 12 force
execute as @a[tag=shift,tag=frozen_elevator_floor_2] at @s run playsound block.note_block.pling player @s ~ ~ ~ 0.8 1.0

# 임시 층 태그 정리
tag @a remove frozen_elevator_floor_1
tag @a remove frozen_elevator_floor_2
