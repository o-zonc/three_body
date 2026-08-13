# 3층 엘리베이터
# Shift 입력은 tick.mcfunction에서 생성되는 shift edge tag를 사용합니다.
# Jump 입력은 minecraft.custom:minecraft.jump 통계의 증가를 감지합니다.

# 웅크리기: 2층 -> 1층
execute as @s[tag=shift] at @s if entity @s[x=23,y=-49,z=-25,dx=2,dy=0,dz=2] run tp @s 24 -63 -24

# 웅크리기: 3층 -> 2층
execute as @s[tag=shift] at @s if entity @s[x=23,y=-41,z=-25,dx=2,dy=0,dz=2] run tp @s 24 -49 -24

# 점프: 1층 -> 2층
execute as @a if score @s elevator_jump > @s elevator_jump_prev at @s if entity @s[x=23,y=-63,z=-25,dx=2,dy=0,dz=2] run tp @s 24 -49 -24

# 점프: 2층 -> 3층
execute as @a if score @s elevator_jump > @s elevator_jump_prev at @s if entity @s[x=23,y=-49,z=-25,dx=2,dy=0,dz=2] run tp @s 24 -41 -24

# 이번 tick의 점프 통계를 다음 tick의 기준값으로 저장
execute as @a run scoreboard players operation @s elevator_jump_prev = @s elevator_jump
