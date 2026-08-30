# 미로 위층에서 기존 엘리베이터 1층으로 복귀하고 시대 사이클을 재개합니다.
scoreboard players set #frozen_maze_active var 0
scoreboard players set #frozen_maze_cleared var 0
scoreboard players set #frozen_maze_started var 0
scoreboard players set #frozen_maze_announced var 0
bossbar set bossbar_frozen_maze visible false
clear @s minecraft:lead[minecraft:custom_data~{three_body:{frozen_maze_escape:1b}}]
function frozen/structure/maze/open
function elevator/move {x:0,y:68,z:0}

function ui/sidebar/refresh
scoreboard objectives setdisplay sidebar material_display

tag @a remove maze
