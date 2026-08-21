# 입자가속기는 현대 시대에 건설된 뒤부터 정보 조각을 자동 생산합니다.
execute if score #GLOBAL accelerator_level matches 1.. run scoreboard players remove #GLOBAL accelerator_timer 1
execute if score #GLOBAL accelerator_level matches 1.. if score #GLOBAL accelerator_timer matches ..0 run function accelerator/produce
execute if score #GLOBAL experiment_cooldown matches 1.. run scoreboard players remove #GLOBAL experiment_cooldown 1

# 현대(문명 단계 8) 진입 이후 철 보유량이 1,000,000개를 초과하면 외계 간섭이 발생합니다.
execute if score #overworld civilization_age matches 8.. if score #iron material matches 1000001.. if score #GLOBAL alien_interference matches 0 run function alien/start
execute if score #GLOBAL alien_interference matches 1 run function alien/tick
