# 3층 엘리베이터
# 3x3 승강장 기준
# 1층 바닥: 24 -64 -24 / 플레이어: Y=-63
# 2층 바닥: 24 -50 -24 / 플레이어: Y=-49
# 3층 바닥: 24 -42 -24 / 플레이어: Y=-41
# Shift는 tick에서 생성되는 edge tag를 사용합니다.
# Jump는 minecraft.custom:minecraft.jump 통계의 증가를 감지합니다.

# 현재 층을 먼저 판정합니다.
# 이동 후 같은 tick에 다음 층으로 연속 이동하는 것을 방지하기 위해
# 현재 층을 임시 태그로 고정한 뒤 이동합니다.
tag @a remove elevator_floor_1
tag @a remove elevator_floor_2
tag @a remove elevator_floor_3

execute as @a[x=23,y=-63,z=-25,dx=2,dy=0,dz=2] run tag @s add elevator_floor_1
execute as @a[x=23,y=-49,z=-25,dx=2,dy=0,dz=2] run tag @s add elevator_floor_2
execute as @a[x=23,y=-41,z=-25,dx=2,dy=0,dz=2] run tag @s add elevator_floor_3

execute as @a[tag=shift,tag=elevator_floor_1] at @s if score #GLOBAL elevator_unlocked matches 0 run return run function minecraft:elevator/locked
execute as @a[tag=elevator_floor_1] if score @s elevator_jump > @s elevator_jump_prev at @s if score #GLOBAL elevator_unlocked matches 0 run return run function minecraft:elevator/locked

# ─────────────────────────────
# 웅크리기: 아래층 이동
# ─────────────────────────────

# 2층 -> 1층
execute as @a[tag=shift,tag=elevator_floor_2] at @s run particle minecraft:end_rod ~ ~0.1 ~ 0.45 0.1 0.45 0.02 12 force
execute as @a[tag=shift,tag=elevator_floor_2] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.8 0.75
execute as @a[tag=shift,tag=elevator_floor_2] run tp @s 24 -63 -24
execute as @a[tag=shift,tag=elevator_floor_2] at @s run particle minecraft:end_rod ~ ~0.1 ~ 0.45 0.1 0.45 0.02 12 force
execute as @a[tag=shift,tag=elevator_floor_2] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.8 1.0

# 3층 -> 2층
execute as @a[tag=shift,tag=elevator_floor_3] at @s run particle minecraft:end_rod ~ ~0.1 ~ 0.45 0.1 0.45 0.02 12 force
execute as @a[tag=shift,tag=elevator_floor_3] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.8 0.75
execute as @a[tag=shift,tag=elevator_floor_3] run tp @s 24 -49 -24
execute as @a[tag=shift,tag=elevator_floor_3] at @s run particle minecraft:end_rod ~ ~0.1 ~ 0.45 0.1 0.45 0.02 12 force
execute as @a[tag=shift,tag=elevator_floor_3] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.8 1.0

# ─────────────────────────────
# 점프: 위층 이동
# ─────────────────────────────

# 1층 -> 2층
execute as @a[tag=elevator_floor_1] if score @s elevator_jump > @s elevator_jump_prev at @s run particle minecraft:end_rod ~ ~0.1 ~ 0.45 0.1 0.45 0.02 12 force
execute as @a[tag=elevator_floor_1] if score @s elevator_jump > @s elevator_jump_prev at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.8 0.75
execute as @a[tag=elevator_floor_1] if score @s elevator_jump > @s elevator_jump_prev run tp @s 24 -49 -24
execute as @a[tag=elevator_floor_1] if score @s elevator_jump > @s elevator_jump_prev at @s run particle minecraft:end_rod ~ ~0.1 ~ 0.45 0.1 0.45 0.02 12 force
execute as @a[tag=elevator_floor_1] if score @s elevator_jump > @s elevator_jump_prev at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.8 1.0

# 2층 -> 3층
execute as @a[tag=elevator_floor_2] if score @s elevator_jump > @s elevator_jump_prev at @s run particle minecraft:end_rod ~ ~0.1 ~ 0.45 0.1 0.45 0.02 12 force
execute as @a[tag=elevator_floor_2] if score @s elevator_jump > @s elevator_jump_prev at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.8 0.75
execute as @a[tag=elevator_floor_2] if score @s elevator_jump > @s elevator_jump_prev run tp @s 24 -41 -24
execute as @a[tag=elevator_floor_2] if score @s elevator_jump > @s elevator_jump_prev at @s run particle minecraft:end_rod ~ ~0.1 ~ 0.45 0.1 0.45 0.02 12 force
execute as @a[tag=elevator_floor_2] if score @s elevator_jump > @s elevator_jump_prev at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.8 1.0

# 이번 tick의 점프 통계를 다음 tick의 기준값으로 저장합니다.
execute as @a run scoreboard players operation @s elevator_jump_prev = @s elevator_jump

# 임시 층 태그를 제거합니다.
tag @a remove elevator_floor_1
tag @a remove elevator_floor_2
tag @a remove elevator_floor_3
