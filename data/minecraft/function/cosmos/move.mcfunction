# 새 차원 진입 시 이전 멸망 효과가 남아 있지 않도록 안전하게 제거
effect clear @a blindness
effect clear @a darkness
execute unless entity @a[tag=accelerator_experiment_running] run title @a clear
function mover/local/recover

# 여명 차원에서 다른 차원으로 떠나는 경우 깨달음을 회수한다.
execute if score #GLOBAL current_dim matches 4 run function dawn/cleanup_epiphany

execute in cosmos run tp @s 0 64 0
execute in cosmos run weather clear
function mover/items/arrive_other

gamerule advance_time false

scoreboard players set #GLOBAL visited_polar 0
scoreboard players set #GLOBAL current_dim 5
