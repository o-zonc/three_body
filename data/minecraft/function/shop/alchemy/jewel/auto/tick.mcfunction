# 자동 세공 tick
# load 초기화와 Lv.2 조건은 상위 jewel/tick에서 처리합니다.
execute unless score #jewel_auto_enabled var matches 1 run return 0
execute if score #jewel_auto_timer var matches 1.. run scoreboard players remove #jewel_auto_timer var 1
execute if score #jewel_auto_timer var matches 1.. run return 0

# 20틱마다 한 사이클 실행합니다.
scoreboard players set #jewel_auto_timer var 20
function shop/alchemy/jewel/auto/cycle
