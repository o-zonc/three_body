# 새 차원 진입 시 이전 멸망 효과가 남아 있지 않도록 안전하게 제거
effect clear @a blindness
effect clear @a darkness
title @a clear
function mover/local/recover

execute in cosmos run tp @s 0 64 0
function mover/items/arrive_other

gamerule advance_time false
gamerule advance_weather false

scoreboard players set #GLOBAL visited_polar 0
scoreboard players set #GLOBAL current_dim 5

gamemode spectator @a
