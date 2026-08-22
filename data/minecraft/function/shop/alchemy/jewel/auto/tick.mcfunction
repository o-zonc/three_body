# 자동 세공 tick
execute unless score #jewel_auto_enabled var = #jewel_auto_enabled var run scoreboard players set #jewel_auto_enabled var 0
execute unless score #jewel_auto_timer var = #jewel_auto_timer var run scoreboard players set #jewel_auto_timer var 0

# Lv.2가 아니게 되면 자동 세공을 강제로 종료합니다.
execute unless score #level alchemy_workshop matches 2.. run scoreboard players set #jewel_auto_enabled var 0
execute unless score #level alchemy_workshop matches 2.. run scoreboard players set #jewel_auto_timer var 0

# ON 상태는 작업대 위의 빛나는 파티클로 표시합니다.
execute if score #jewel_auto_enabled var matches 1 in overworld run particle minecraft:end_rod -23.5 -62.15 -35.5 0.22 0.18 0.22 0.01 1 normal

execute unless score #jewel_auto_enabled var matches 1 run return 0
execute if score #jewel_auto_timer var matches 1.. run scoreboard players remove #jewel_auto_timer var 1
execute if score #jewel_auto_timer var matches 1.. run return 0

# 20틱마다 한 사이클 실행합니다.
scoreboard players set #jewel_auto_timer var 20
function shop/alchemy/jewel/auto/cycle
