# 새 차원 진입 시 이전 멸망 효과가 남아 있지 않도록 안전하게 제거
effect clear @a blindness
effect clear @a darkness
title @a clear

execute in dawn run tp @a ~ 64 ~

execute in dawn run time set 23000
gamerule advance_time false

scoreboard players set #GLOBAL visited_polar 0
scoreboard players set #GLOBAL current_dim 4
execute unless score #world_eye unlock matches 1 as @a at @s run function resource/effect/unlock_success
scoreboard players set #world_eye unlock 1

scoreboard players set #GLOBAL era_paused 0
