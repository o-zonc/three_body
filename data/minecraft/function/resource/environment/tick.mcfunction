# 차원을 벗어나거나 시스템이 멈춘 동안에는 다음 지급까지의 시간을 새로 센다.
execute unless score #GLOBAL current_dim matches 1 store result score #heat_environment_timer generate run function resource/environment/heat_interval
execute unless score #GLOBAL current_dim matches 2 store result score #cold_environment_timer generate run function resource/environment/cold_interval
execute if score #GLOBAL era_paused matches 1 run return 0
execute if score #disaster_running run matches 1 run return 0

execute if score #GLOBAL current_dim matches 1 if score #heat unlock matches 1 run scoreboard players remove #heat_environment_timer generate 1
execute if score #GLOBAL current_dim matches 2 if score #cold unlock matches 1 run scoreboard players remove #cold_environment_timer generate 1
execute if score #GLOBAL current_dim matches 1 if score #heat_environment_timer generate matches ..0 run function resource/environment/heat_cycle
execute if score #GLOBAL current_dim matches 2 if score #cold_environment_timer generate matches ..0 run function resource/environment/cold_cycle
