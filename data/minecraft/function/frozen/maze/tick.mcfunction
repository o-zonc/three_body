# 얼어붙은 세계 지하 미로 이벤트
# 복제된 미로의 플레이어 이동 높이 Y=52..59를 기준으로 진입과 중앙 도달을 판정합니다.
# 다른 방식으로 차원을 떠난 경우에도 이벤트 상태가 남지 않게 정리합니다.
execute unless score #GLOBAL current_dim matches 2 as @a run clear @s minecraft:lead[minecraft:custom_data~{three_body:{frozen_maze_escape:1b}}]
execute unless score #GLOBAL current_dim matches 2 run tag @a remove maze
execute unless score #GLOBAL current_dim matches 2 run scoreboard players set #frozen_maze_active var 0
execute unless score #GLOBAL current_dim matches 2 run scoreboard players set #frozen_maze_cleared var 0
execute unless score #GLOBAL current_dim matches 2 run scoreboard players set #frozen_maze_started var 0
execute unless score #GLOBAL current_dim matches 2 run scoreboard players set #frozen_maze_announced var 0
execute unless score #GLOBAL current_dim matches 2 run return 0

# 긴급탈출장치는 별도 interaction 없이 왼손에 드는 즉시 사용합니다.
execute if score #frozen_maze_active var matches 1 as @a if items entity @s weapon.offhand minecraft:lead[minecraft:custom_data~{three_body:{frozen_maze_escape:1b}}] run function frozen/maze/emergency_escape

# -34..34 정사각형 미로 내부에 처음 진입하면 새 이벤트를 시작합니다.
execute if score #frozen_maze unlock matches 1.. unless score #frozen_maze_active var matches 1 as @a[x=-34,y=52,z=-34,dx=68,dy=7,dz=68,sort=nearest,limit=1] run function frozen/maze/enter
execute if score #frozen_maze unlock matches 1.. unless score #frozen_maze_active var matches 1 if entity @a[x=-34,y=52,z=-34,dx=68,dy=7,dz=68] run scoreboard players set #frozen_maze_active var 1
# 같은 틱에 함께 들어온 플레이어도 미로 참여자로 등록합니다.
execute if score #frozen_maze_active var matches 1 run tag @a[x=-34,y=52,z=-34,dx=68,dy=7,dz=68] add maze
execute if score #frozen_maze_active var matches 1 unless score #frozen_maze_started var matches 1 run scoreboard players set #frozen_maze_cleared var 0
execute if score #frozen_maze_active var matches 1 unless score #frozen_maze_started var matches 1 run scoreboard players set #frozen_maze_claimed var 0
execute if score #frozen_maze_active var matches 1 unless score #frozen_maze_started var matches 1 run scoreboard players set #frozen_maze_started var 1
execute unless score #frozen_maze_active var matches 1 run scoreboard players set #frozen_maze_started var 0

# 중심까지의 격자 거리: |x| + |z| (범위 모서리 최대 68)
execute as @a[tag=maze,x=-34,y=52,z=-34,dx=68,dy=7,dz=68,sort=nearest,limit=1] store result score #frozen_maze_x tmp run data get entity @s Pos[0] 1
execute as @a[tag=maze,x=-34,y=52,z=-34,dx=68,dy=7,dz=68,sort=nearest,limit=1] store result score #frozen_maze_z tmp run data get entity @s Pos[2] 1
scoreboard players set #frozen_maze_minus_one tmp -1
execute if score #frozen_maze_x tmp matches ..-1 run scoreboard players operation #frozen_maze_x tmp *= #frozen_maze_minus_one tmp
execute if score #frozen_maze_z tmp matches ..-1 run scoreboard players operation #frozen_maze_z tmp *= #frozen_maze_minus_one tmp
scoreboard players operation #frozen_maze_distance tmp = #frozen_maze_x tmp
scoreboard players operation #frozen_maze_distance tmp += #frozen_maze_z tmp

# 중심 3x3 발판에 도달하면 미로를 클리어합니다.
execute if score #frozen_maze_active var matches 1 if entity @a[tag=maze,x=-1,y=52,z=-1,dx=2,dy=7,dz=2] run scoreboard players set #frozen_maze_cleared var 1

# 미로 클리어 시 각 미로의 랜덤 문구가 표출됩니다.
execute if score #maze_type var matches 0 if score #frozen_maze_cleared var matches 1 unless score #frozen_maze_announced var matches 1 run tellraw @a[tag=maze] "§7이곳은 먼 미래에 멸망했다. 아마도 차가운 겨울을 버티지 못한 것 같다..."
execute if score #maze_type var matches 1 if score #frozen_maze_cleared var matches 1 unless score #frozen_maze_announced var matches 1 run tellraw @a[tag=maze] "§7§o시스템 오류..."
execute if score #maze_type var matches 2 if score #frozen_maze_cleared var matches 1 unless score #frozen_maze_announced var matches 1 run tellraw @a[tag=maze] "§7이곳은 먼 과거에 멸망할 것이다. 아마도 뜨거운 여름을 버티지 못할 것 같다..."
execute if score #maze_type var matches 3 if score #frozen_maze_cleared var matches 1 unless score #frozen_maze_announced var matches 1 run tellraw @a[tag=maze] "§7이곳은 어둠 속에 가라앉았다. 바깥 세상이라는 것이 존재할까..."
execute if score #maze_type var matches 4 if score #frozen_maze_cleared var matches 1 unless score #frozen_maze_announced var matches 1 run tellraw @a[tag=maze] "§7최초의 미궁에서 빠져나온 사람은 또 다른 미로를 만들었다..."
execute if score #maze_type var matches 5 if score #frozen_maze_cleared var matches 1 unless score #frozen_maze_announced var matches 1 run tellraw @a[tag=maze] "§7이 세상은 격자 속에서 시뮬레이션되고 있는 것이 아닐까..."
execute if score #maze_type var matches 6 if score #frozen_maze_cleared var matches 1 unless score #frozen_maze_announced var matches 1 run tellraw @a[tag=maze] "§7이곳은 밝은 빛이 가득하다. 바깥 세상은 그렇지 않지만..."
execute if score #maze_type var matches 7 if score #frozen_maze_cleared var matches 1 unless score #frozen_maze_announced var matches 1 run tellraw @a[tag=maze] "§7이곳은 누군가 의도적으로 만들어 놓은 것이 분명하다..."

execute if score #frozen_maze_cleared var matches 1 unless score #frozen_maze_announced var matches 1 run tellraw @a[tag=maze] "\n점프해서 위로 올라가 보자."

execute if score #frozen_maze_cleared var matches 1 run scoreboard players set #frozen_maze_announced var 1
