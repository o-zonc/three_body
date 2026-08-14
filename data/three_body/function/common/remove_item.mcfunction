# 플레이어가 직접 던진 아이템 제거
execute as @e[type=minecraft:item] if data entity @s Thrower run kill @s
