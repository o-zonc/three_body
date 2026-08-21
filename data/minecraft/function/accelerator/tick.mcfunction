# 입자가속기는 가동된 뒤부터 정보 조각을 자동 생산합니다.
execute if score #GLOBAL accelerator_level matches 1.. run scoreboard players remove #GLOBAL accelerator_timer 1
execute if score #GLOBAL accelerator_level matches 1.. if score #GLOBAL accelerator_timer matches ..0 run function accelerator/produce
execute if score #GLOBAL experiment_cooldown matches 1.. run scoreboard players remove #GLOBAL experiment_cooldown 1

# 현대(문명 단계 8) 진입 이후 철 보유량이 1,000,000개를 초과하면 외계 간섭이 발생합니다.
execute if score #overworld civilization_age matches 8.. if score #iron material matches 1000001.. if score #GLOBAL alien_interference matches 0 run function alien/start
execute if score #GLOBAL alien_interference matches 1 run function alien/tick

# 보호막 충전량과 유지비를 매 틱 갱신합니다.
# 충전 중에는 5분(6000틱)마다 플레이어가 소지한 시간 1개를 유지비로 사용합니다.
execute if score #GLOBAL shield_charge matches 1.. run scoreboard players remove #GLOBAL shield_charge 1
execute if score #GLOBAL shield_charge matches 1.. run scoreboard players remove #GLOBAL shield_maintenance 1
execute if score #GLOBAL shield_charge matches 1.. if score #GLOBAL shield_maintenance matches ..0 as @a[tag=player,limit=1] run function shield/pay_time
execute unless score #GLOBAL shield_charge matches 1.. run scoreboard players set #GLOBAL shield_maintenance 6000

# 보호막 보스바를 실제 충전량과 동기화합니다.
execute store result bossbar shield_charge value run scoreboard players get #GLOBAL shield_charge
bossbar set shield_charge players @a
execute if score #GLOBAL shield_charge matches 1.. run bossbar set shield_charge visible true
execute unless score #GLOBAL shield_charge matches 1.. run bossbar set shield_charge visible false
