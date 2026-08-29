# 얼어붙은 세계 지하 미로 이벤트
# 발판 Y=52 위의 플레이어 발 좌표 Y=53을 기준으로 진입과 중앙 도달을 판정합니다.
# 다른 방식으로 차원을 떠난 경우에도 이벤트 상태가 남지 않게 정리합니다.
execute unless score #GLOBAL current_dim matches 2 as @a run clear @s minecraft:lead[minecraft:custom_data~{three_body:{frozen_maze_escape:1b}}]
execute unless score #GLOBAL current_dim matches 2 run scoreboard players set #frozen_maze_active var 0
execute unless score #GLOBAL current_dim matches 2 run scoreboard players set #frozen_maze_cleared var 0
execute unless score #GLOBAL current_dim matches 2 run scoreboard players set #frozen_maze_started var 0
execute unless score #GLOBAL current_dim matches 2 run return 0

# 긴급탈출장치는 별도 interaction 없이 왼손에 드는 즉시 사용합니다.
execute if score #frozen_maze_active var matches 1 as @a if items entity @s weapon.offhand minecraft:lead[minecraft:custom_data~{three_body:{frozen_maze_escape:1b}}] run function frozen/maze/emergency_escape

# -34..34 정사각형 범위에 처음 진입하면 새 이벤트를 시작합니다.
execute unless score #frozen_maze_active var matches 1 as @a[x=-34,y=53,z=-34,dx=68,dy=1,dz=68,sort=nearest,limit=1] run function frozen/maze/enter
execute unless score #frozen_maze_active var matches 1 if entity @a[x=-34,y=53,z=-34,dx=68,dy=1,dz=68] run scoreboard players set #frozen_maze_active var 1
execute if score #frozen_maze_active var matches 1 unless score #frozen_maze_started var matches 1 run scoreboard players set #frozen_maze_cleared var 0
execute if score #frozen_maze_active var matches 1 unless score #frozen_maze_started var matches 1 run scoreboard players set #frozen_maze_claimed var 0
execute if score #frozen_maze_active var matches 1 unless score #frozen_maze_started var matches 1 run scoreboard players set #frozen_maze_started var 1
execute unless score #frozen_maze_active var matches 1 run scoreboard players set #frozen_maze_started var 0

# 중심까지의 격자 거리: |x| + |z| (범위 모서리 최대 68)
execute as @a[x=-34,y=53,z=-34,dx=68,dy=1,dz=68,sort=nearest,limit=1] store result score #frozen_maze_x tmp run data get entity @s Pos[0] 1
execute as @a[x=-34,y=53,z=-34,dx=68,dy=1,dz=68,sort=nearest,limit=1] store result score #frozen_maze_z tmp run data get entity @s Pos[2] 1
scoreboard players set #frozen_maze_minus_one tmp -1
execute if score #frozen_maze_x tmp matches ..-1 run scoreboard players operation #frozen_maze_x tmp *= #frozen_maze_minus_one tmp
execute if score #frozen_maze_z tmp matches ..-1 run scoreboard players operation #frozen_maze_z tmp *= #frozen_maze_minus_one tmp
scoreboard players operation #frozen_maze_distance tmp = #frozen_maze_x tmp
scoreboard players operation #frozen_maze_distance tmp += #frozen_maze_z tmp

# 중심 3x3 발판에 도달하면 미로를 클리어합니다.
execute if score #frozen_maze_active var matches 1 if entity @a[x=-1,y=53,z=-1,dx=2,dy=1,dz=2] run scoreboard players set #frozen_maze_cleared var 1

# 미로 클리어 시 각 미로의 랜덤 문구가 표출됩니다.
execute if score #maze_type var matches 0 if score #frozen_maze_cleared var matches 1 run tellraw @s ["§7이곳은 먼 미래에 멸망했다. 아마도 차가운 겨울을 버티지 못한 것 같다..."]