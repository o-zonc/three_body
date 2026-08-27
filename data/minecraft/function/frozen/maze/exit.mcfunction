# 미로 위층에서 기존 엘리베이터 1층으로 복귀하고 시대 사이클을 재개합니다.
scoreboard players set #frozen_maze_active var 0
scoreboard players set #frozen_maze_cleared var 0
scoreboard players set #frozen_maze_started var 0
bossbar set bossbar_frozen_maze visible false
function elevator/move {x:0,y:68,z:0}
