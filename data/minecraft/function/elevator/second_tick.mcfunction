# 두 번째 3층 엘리베이터
# factory_elevator_unlocked: 0 = 잠김 / 1 = 2층까지 / 2 = 3층까지
# 3x3 승강장 중심: X=-24, Z=24
# 1층 바닥 Y=-63 / 플레이어 Y=-62
# 2층 바닥 Y=-54 / 플레이어 Y=-53
# 3층 바닥 Y=-47 / 플레이어 Y=-46

# 이동 전 현재 층을 고정하여 한 번에 한 층만 이동합니다.
tag @a remove elevator_2_floor_1
tag @a remove elevator_2_floor_2
tag @a remove elevator_2_floor_3
execute as @a[x=-25,y=-62,z=23,dx=2,dy=0,dz=2] run tag @s add elevator_2_floor_1
execute as @a[x=-25,y=-53,z=23,dx=2,dy=0,dz=2] run tag @s add elevator_2_floor_2
execute as @a[x=-25,y=-46,z=23,dx=2,dy=0,dz=2] run tag @s add elevator_2_floor_3

# 입자가속기 건설 전에는 1층에서 사용할 수 없습니다.
execute as @a[tag=shift,tag=elevator_2_floor_1] at @s unless score #GLOBAL factory_elevator_unlocked matches 1.. run return run function elevator/locked
execute as @a[tag=elevator_2_floor_1] if score @s elevator_jump > @s elevator_jump_prev at @s unless score #GLOBAL factory_elevator_unlocked matches 1.. run return run function elevator/locked

# 웅크리기: 아래층 이동
execute as @a[tag=shift,tag=elevator_2_floor_2] at @s run particle end_rod ~ ~0.1 ~ 0.45 0.1 0.45 0.02 12 force
execute as @a[tag=shift,tag=elevator_2_floor_2] at @s run playsound block.note_block.pling player @s ~ ~ ~ 0.8 0.75
execute as @a[tag=shift,tag=elevator_2_floor_2] run tp @s -24 -62 24
execute as @a[tag=shift,tag=elevator_2_floor_2] at @s run particle end_rod ~ ~0.1 ~ 0.45 0.1 0.45 0.02 12 force
execute as @a[tag=shift,tag=elevator_2_floor_2] at @s run playsound block.note_block.pling player @s ~ ~ ~ 0.8 1.0

execute as @a[tag=shift,tag=elevator_2_floor_3] at @s run particle end_rod ~ ~0.1 ~ 0.45 0.1 0.45 0.02 12 force
execute as @a[tag=shift,tag=elevator_2_floor_3] at @s run playsound block.note_block.pling player @s ~ ~ ~ 0.8 0.75
execute as @a[tag=shift,tag=elevator_2_floor_3] run tp @s -24 -53 24
execute as @a[tag=shift,tag=elevator_2_floor_3] at @s run particle end_rod ~ ~0.1 ~ 0.45 0.1 0.45 0.02 12 force
execute as @a[tag=shift,tag=elevator_2_floor_3] at @s run playsound block.note_block.pling player @s ~ ~ ~ 0.8 1.0

# 점프: 위층 이동
execute as @a[tag=elevator_2_floor_1] if score @s elevator_jump > @s elevator_jump_prev if score #GLOBAL factory_elevator_unlocked matches 1.. at @s run particle end_rod ~ ~0.1 ~ 0.45 0.1 0.45 0.02 12 force
execute as @a[tag=elevator_2_floor_1] if score @s elevator_jump > @s elevator_jump_prev if score #GLOBAL factory_elevator_unlocked matches 1.. at @s run playsound block.note_block.pling player @s ~ ~ ~ 0.8 0.75
execute as @a[tag=elevator_2_floor_1] if score @s elevator_jump > @s elevator_jump_prev if score #GLOBAL factory_elevator_unlocked matches 1.. run tp @s -24 -53 24
execute as @a[tag=elevator_2_floor_1] if score @s elevator_jump > @s elevator_jump_prev if score #GLOBAL factory_elevator_unlocked matches 1.. at @s run particle end_rod ~ ~0.1 ~ 0.45 0.1 0.45 0.02 12 force
execute as @a[tag=elevator_2_floor_1] if score @s elevator_jump > @s elevator_jump_prev if score #GLOBAL factory_elevator_unlocked matches 1.. at @s run playsound block.note_block.pling player @s ~ ~ ~ 0.8 1.0

execute as @a[tag=elevator_2_floor_2] if score @s elevator_jump > @s elevator_jump_prev at @s unless score #GLOBAL factory_elevator_unlocked matches 2.. run function elevator/locked
execute as @a[tag=elevator_2_floor_2] if score @s elevator_jump > @s elevator_jump_prev if score #GLOBAL factory_elevator_unlocked matches 2.. at @s run particle end_rod ~ ~0.1 ~ 0.45 0.1 0.45 0.02 12 force
execute as @a[tag=elevator_2_floor_2] if score @s elevator_jump > @s elevator_jump_prev if score #GLOBAL factory_elevator_unlocked matches 2.. at @s run playsound block.note_block.pling player @s ~ ~ ~ 0.8 0.75
execute as @a[tag=elevator_2_floor_2] if score @s elevator_jump > @s elevator_jump_prev if score #GLOBAL factory_elevator_unlocked matches 2.. run tp @s -24 -46 24
execute as @a[tag=elevator_2_floor_2] if score @s elevator_jump > @s elevator_jump_prev if score #GLOBAL factory_elevator_unlocked matches 2.. at @s run particle end_rod ~ ~0.1 ~ 0.45 0.1 0.45 0.02 12 force
execute as @a[tag=elevator_2_floor_2] if score @s elevator_jump > @s elevator_jump_prev if score #GLOBAL factory_elevator_unlocked matches 2.. at @s run playsound block.note_block.pling player @s ~ ~ ~ 0.8 1.0

# 임시 층 태그 정리
tag @a remove elevator_2_floor_1
tag @a remove elevator_2_floor_2
tag @a remove elevator_2_floor_3
