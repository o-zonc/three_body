# 자동 세공 tick
# load 초기화와 Lv.1 조건은 상위 jewel/tick에서 처리한다.
execute unless score #jewel_auto_enabled var matches 1 run return 0
execute if score #jewel_auto_timer var matches 1.. run scoreboard players remove #jewel_auto_timer var 1
execute if score #jewel_auto_timer var matches 1.. run return 0

# Lv.1 초기형은 100틱, Lv.2 완성형은 20틱마다 한 사이클 실행한다.
execute if score #level alchemy_workshop matches 1 run scoreboard players set #jewel_auto_timer var 100
execute if score #level alchemy_workshop matches 2.. run scoreboard players set #jewel_auto_timer var 20
function shop/alchemy/jewel/auto/cycle
