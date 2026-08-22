# 세공 작업대 공용 쿨타임
# Lv.0에서만 감소하며, Lv.1 이상으로 업그레이드하거나 공방이 잠기면 즉시 제거됩니다.
execute unless score #alchemy_workshop unlock matches 1 run scoreboard players set #jewel_cooldown var 0
execute if score #level alchemy_workshop matches 0 if score #jewel_cooldown var matches 1.. run scoreboard players remove #jewel_cooldown var 1
execute if score #level alchemy_workshop matches 1.. if score #jewel_cooldown var matches 1.. run scoreboard players set #jewel_cooldown var 0
execute if score #jewel_cooldown var matches ..-1 run scoreboard players set #jewel_cooldown var 0
