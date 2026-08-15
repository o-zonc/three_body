# 새 차원 진입 시 이전 멸망 효과가 남아 있지 않도록 안전하게 제거
effect clear @a blindness
effect clear @a darkness
title @a clear

execute in minecraft:cosmos run tp @s 0 64 0

gamerule minecraft:advance_time false
gamerule minecraft:advance_weather false

scoreboard players set #GLOBAL visited_polar 0
scoreboard players set #GLOBAL current_dim 5

gamemode spectator @a

scoreboard players set #GLOBAL era_paused 0
