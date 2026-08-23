# 자동 세공 tick
# 누락값 초기화는 var_init/load에서 한 번만 처리합니다.

# Lv.2가 아니게 되면 자동 세공을 강제로 종료합니다.
execute unless score #level alchemy_workshop matches 2.. run scoreboard players set #jewel_auto_enabled var 0
execute unless score #level alchemy_workshop matches 2.. run scoreboard players set #jewel_auto_timer var 0

execute unless score #jewel_auto_enabled var matches 1 run return 0
execute if score #jewel_auto_timer var matches 1.. run scoreboard players remove #jewel_auto_timer var 1
execute if score #jewel_auto_timer var matches 1.. run return 0

# 20틱마다 한 사이클 실행합니다.
scoreboard players set #jewel_auto_timer var 20
function shop/alchemy/jewel/auto/cycle
