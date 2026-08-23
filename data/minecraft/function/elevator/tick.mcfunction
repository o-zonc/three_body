# 3층 엘리베이터
# elevator_unlocked: 0 = 잠김, 1 = 2층까지, 2 = 3층까지
# 3x3 승강장 기준
# 1층 바닥: 24 -64 -24 / 플레이어: Y=-63
# 2층 바닥: 24 -50 -24 / 플레이어: Y=-49
# 3층 바닥: 24 -42 -24 / 플레이어: Y=-41
# Shift는 tick에서 생성되는 edge tag를 사용합니다.
# Jump는 minecraft.custom:minecraft.jump 통계의 증가를 감지합니다.

# 엘리베이터는 오버월드 전용입니다. 다른 차원에서는 점프 기준값만 동기화하고 나머지 영역 검사를 생략합니다.
execute unless score #GLOBAL current_dim matches 0 as @a run scoreboard players operation @s elevator_jump_prev = @s elevator_jump
execute unless score #GLOBAL current_dim matches 0 run return 0

# 현재 층을 먼저 판정합니다.
# 이동 후 같은 tick에 다음 층으로 연속 이동하는 것을 방지하기 위해 현재 층을 임시 태그로 고정한 뒤 이동합니다.
tag @a remove elevator_floor_1
tag @a remove elevator_floor_2
tag @a remove elevator_floor_3
execute as @a[x=23,y=-63,z=-25,dx=2,dy=0,dz=2] run tag @s add elevator_floor_1
execute as @a[x=23,y=-49,z=-25,dx=2,dy=0,dz=2] run tag @s add elevator_floor_2
execute as @a[x=23,y=-41,z=-25,dx=2,dy=0,dz=2] run tag @s add elevator_floor_3

execute as @a[tag=shift,tag=elevator_floor_1] at @s if score #GLOBAL elevator_unlocked matches 0 run return run function elevator/locked
execute as @a[tag=elevator_floor_1] if score @s elevator_jump > @s elevator_jump_prev at @s if score #GLOBAL elevator_unlocked matches 0 run return run function elevator/locked

# 2층 -> 1층
execute as @a[tag=shift,tag=elevator_floor_2] at @s run particle end_rod ~ ~0.1 ~ 0.45 0.1 0.45 0.02 12 force
execute as @a[tag=shift,tag=elevator_floor_2] at @s run playsound block.note_block.pling player @s ~ ~ ~ 0.8 0.75
execute as @a[tag=shift,tag=elevator_floor_2] run tp @s 24 -63 -24
execute as @a[tag=shift,tag=elevator_floor_2] at @s run particle end_rod ~ ~0.1 ~ 0.45 0.1 0.45 0.02 12 force
execute as @a[tag=shift,tag=elevator_floor_2] at @s run playsound block.note_block.pling player @s ~ ~ ~ 0.8 1.0

# 3층 -> 2층
execute as @a[tag=shift,tag=elevator_floor_3] at @s run particle end_rod ~ ~0.1 ~ 0.45 0.1 0.45 0.02 12 force
execute as @a[tag=shift,tag=elevator_floor_3] at @s run playsound block.note_block.pling player @s ~ ~ ~ 0.8 0.75
execute as @a[tag=shift,tag=elevator_floor_3] run tp @s 24 -49 -24
execute as @a[tag=shift,tag=elevator_floor_3] at @s run particle end_rod ~ ~0.1 ~ 0.45 0.1 0.45 0.02 12 force
execute as @a[tag=shift,tag=elevator_floor_3] at @s run playsound block.note_block.pling player @s ~ ~ ~ 0.8 1.0

# 1층 -> 2층 (엘리베이터 Lv. 1 필요)
execute as @a[tag=elevator_floor_1] if score @s elevator_jump > @s elevator_jump_prev if score #GLOBAL elevator_unlocked matches 1.. at @s run particle end_rod ~ ~0.1 ~ 0.45 0.1 0.45 0.02 12 force
execute as @a[tag=elevator_floor_1] if score @s elevator_jump > @s elevator_jump_prev if score #GLOBAL elevator_unlocked matches 1.. at @s run playsound block.note_block.pling player @s ~ ~ ~ 0.8 0.75
execute as @a[tag=elevator_floor_1] if score @s elevator_jump > @s elevator_jump_prev if score #GLOBAL elevator_unlocked matches 1.. run tp @s 24 -49 -24
execute as @a[tag=elevator_floor_1] if score @s elevator_jump > @s elevator_jump_prev if score #GLOBAL elevator_unlocked matches 1.. at @s run particle end_rod ~ ~0.1 ~ 0.45 0.1 0.45 0.02 12 force
execute as @a[tag=elevator_floor_1] if score @s elevator_jump > @s elevator_jump_prev if score #GLOBAL elevator_unlocked matches 1.. at @s run playsound block.note_block.pling player @s ~ ~ ~ 0.8 1.0

# 2층 -> 3층 (엘리베이터 Lv. 2 필요)
execute as @a[tag=elevator_floor_2] if score @s elevator_jump > @s elevator_jump_prev unless score #GLOBAL elevator_unlocked matches 2.. run function elevator/upgrade_required
execute as @a[tag=elevator_floor_2] if score @s elevator_jump > @s elevator_jump_prev if score #GLOBAL elevator_unlocked matches 2.. at @s run particle end_rod ~ ~0.1 ~ 0.45 0.1 0.45 0.02 12 force
execute as @a[tag=elevator_floor_2] if score @s elevator_jump > @s elevator_jump_prev if score #GLOBAL elevator_unlocked matches 2.. at @s run playsound block.note_block.pling player @s ~ ~ ~ 0.8 0.75
execute as @a[tag=elevator_floor_2] if score @s elevator_jump > @s elevator_jump_prev if score #GLOBAL elevator_unlocked matches 2.. run tp @s 24 -41 -24
execute as @a[tag=elevator_floor_2] if score @s elevator_jump > @s elevator_jump_prev if score #GLOBAL elevator_unlocked matches 2.. at @s run particle end_rod ~ ~0.1 ~ 0.45 0.1 0.45 0.02 12 force
execute as @a[tag=elevator_floor_2] if score @s elevator_jump > @s elevator_jump_prev if score #GLOBAL elevator_unlocked matches 2.. at @s run playsound block.note_block.pling player @s ~ ~ ~ 0.8 1.0

function elevator/second_tick
execute as @a run scoreboard players operation @s elevator_jump_prev = @s elevator_jump

tag @a remove elevator_floor_1
tag @a remove elevator_floor_2
tag @a remove elevator_floor_3
