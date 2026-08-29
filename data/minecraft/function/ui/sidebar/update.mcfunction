# 사이드바의 실제 자원 숫자는 fixed score component가 자동으로 최신 값을 읽습니다.

# 미로에 들어가면 사이드바 표시 해제
execute if score #frozen_maze_active var matches 1 run scoreboard objectives setdisplay sidebar

# 시대/해금에 따라 달라지는 레이아웃만 5틱마다 다시 구성합니다.
scoreboard players add #sidebar_update_timer var 1
execute if score #sidebar_update_timer var matches 5.. run function ui/sidebar/refresh
execute if score #sidebar_update_timer var matches 5.. run scoreboard players set #sidebar_update_timer var 0
