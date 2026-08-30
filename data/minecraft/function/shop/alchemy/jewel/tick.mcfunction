# 세공 모드와 자동 세공 상태 관리
execute unless score #alchemy_workshop unlock matches 1 run return 0

execute unless score #jewel_mode var = #jewel_mode var run scoreboard players set #jewel_mode var 0
execute if score #jewel_mode var matches ..-1 run scoreboard players set #jewel_mode var 0
execute if score #jewel_mode var matches 3.. run scoreboard players set #jewel_mode var 0
execute if score #jewel_mode var > #level alchemy_workshop run scoreboard players set #jewel_mode var 0

# Lv.1이 아니면 자동 세공 상태를 필요할 때만 정리합니다.
execute unless score #level alchemy_workshop matches 1.. if score #jewel_auto_enabled var matches 1 run scoreboard players set #jewel_auto_enabled var 0
execute unless score #level alchemy_workshop matches 1.. if score #jewel_auto_timer var matches 1.. run scoreboard players set #jewel_auto_timer var 0

# Lv.1부터 자동 세공을 사용할 수 있으며, Lv.2에서 속도와 연료 효율이 향상됩니다.
execute if score #level alchemy_workshop matches 1.. run function shop/alchemy/jewel/auto/tick
