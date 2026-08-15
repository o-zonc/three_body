# 새 차원 진입 시 이전 멸망 효과가 남아 있지 않도록 안전하게 제거
effect clear @a blindness
effect clear @a darkness
title @a clear

execute in polarnight run tp @a ~ 64 ~
gamerule advance_time false
execute in polarnight run time set 18000

scoreboard players set #GLOBAL visited_dried 0
scoreboard players set #GLOBAL visited_frozen 0
scoreboard players set #GLOBAL visited_overworld 0
scoreboard players add #GLOBAL visited_polar 1
scoreboard players set #GLOBAL current_dim 3

scoreboard players set #GLOBAL era_paused 0
