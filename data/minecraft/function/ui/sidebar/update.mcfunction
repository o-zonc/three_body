# 사이드바의 실제 자원 숫자는 fixed score component가 자동으로 최신 값을 읽습니다.
# 시대/해금에 따라 달라지는 레이아웃만 5틱마다 다시 구성합니다.
scoreboard players add #sidebar_update_timer var 1
execute if score #sidebar_update_timer var matches 5.. run function ui/sidebar/refresh
execute if score #sidebar_update_timer var matches 5.. run scoreboard players set #sidebar_update_timer var 0
