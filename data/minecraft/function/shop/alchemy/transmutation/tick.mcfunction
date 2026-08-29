# 두 변환기는 서로 독립적인 5분 쿨타임을 사용한다.
execute unless score #alchemy_gem_cooldown var = #alchemy_gem_cooldown var run scoreboard players set #alchemy_gem_cooldown var 0
execute unless score #alchemy_metal_cooldown var = #alchemy_metal_cooldown var run scoreboard players set #alchemy_metal_cooldown var 0
execute unless score #alchemy_workshop unlock matches 1 run scoreboard players set #alchemy_gem_cooldown var 0
execute unless score #alchemy_workshop unlock matches 1 run scoreboard players set #alchemy_metal_cooldown var 0
execute unless score #alchemy_workshop unlock matches 1 run return 0
execute if score #alchemy_gem_cooldown var matches 1.. run scoreboard players remove #alchemy_gem_cooldown var 1
execute if score #alchemy_metal_cooldown var matches 1.. run scoreboard players remove #alchemy_metal_cooldown var 1
execute if score #alchemy_gem_cooldown var matches ..-1 run scoreboard players set #alchemy_gem_cooldown var 0
execute if score #alchemy_metal_cooldown var matches ..-1 run scoreboard players set #alchemy_metal_cooldown var 0
