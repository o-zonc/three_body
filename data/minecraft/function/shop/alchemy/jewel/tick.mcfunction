# 세공 작업대 공용 쿨타임
# 공방이 잠겨 있으면 필요한 정리만 하고 즉시 종료합니다.
execute unless score #alchemy_workshop unlock matches 1 if score #jewel_cooldown var matches 1.. run scoreboard players set #jewel_cooldown var 0
execute unless score #alchemy_workshop unlock matches 1 run return 0

# Lv.0에서만 감소하며 Lv.1 이상이면 즉시 제거됩니다.
execute if score #level alchemy_workshop matches 0 if score #jewel_cooldown var matches 1.. run scoreboard players remove #jewel_cooldown var 1
execute if score #level alchemy_workshop matches 1.. if score #jewel_cooldown var matches 1.. run scoreboard players set #jewel_cooldown var 0
execute if score #jewel_cooldown var matches ..-1 run scoreboard players set #jewel_cooldown var 0

# Lv.2가 아니면 자동 세공 상태를 필요할 때만 정리합니다.
execute unless score #level alchemy_workshop matches 2.. if score #jewel_auto_enabled var matches 1 run scoreboard players set #jewel_auto_enabled var 0
execute unless score #level alchemy_workshop matches 2.. if score #jewel_auto_timer var matches 1.. run scoreboard players set #jewel_auto_timer var 0

# Lv.2 자동 세공
execute if score #level alchemy_workshop matches 2.. run function shop/alchemy/jewel/auto/tick
