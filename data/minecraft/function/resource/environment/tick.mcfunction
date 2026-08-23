# 차원이 바뀐 순간에만 현재 업그레이드 기준의 환경 자원 타이머를 다시 계산합니다.
execute unless score #GLOBAL current_dim = #environment_dim_prev var run function resource/environment/reset_timers
scoreboard players operation #environment_dim_prev var = #GLOBAL current_dim

execute if score #GLOBAL era_paused matches 1 run return 0
execute if score #disaster_running run matches 1 run return 0

execute if score #GLOBAL current_dim matches 1 if score #heat unlock matches 1 run scoreboard players remove #heat_environment_timer generate 1
execute if score #GLOBAL current_dim matches 2 if score #cold unlock matches 1 run scoreboard players remove #cold_environment_timer generate 1
execute if score #GLOBAL current_dim matches 1 if score #heat_environment_timer generate matches ..0 run function resource/environment/heat_cycle
execute if score #GLOBAL current_dim matches 2 if score #cold_environment_timer generate matches ..0 run function resource/environment/cold_cycle
