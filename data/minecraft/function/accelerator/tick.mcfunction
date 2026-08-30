# 장기 고장 상태에서는 입자가속기의 생산·실험 재정비를 모두 정지합니다.
execute if score #GLOBAL accelerator_disabled matches 1 if score #GLOBAL accelerator_repair_timer matches 1.. run scoreboard players remove #GLOBAL accelerator_repair_timer 1
execute if score #GLOBAL accelerator_disabled matches 1 if score #GLOBAL accelerator_repair_timer matches ..0 run function accelerator/repair_complete

# 입자가속기는 정상 가동 중이고 시간의 흐름이 멈추지 않았을 때만 정보를 자동 생산합니다.
execute unless score #GLOBAL era_paused matches 1 unless score #GLOBAL accelerator_disabled matches 1 if score #GLOBAL accelerator_level matches 1.. run scoreboard players remove #GLOBAL accelerator_timer 1
execute unless score #GLOBAL era_paused matches 1 unless score #GLOBAL accelerator_disabled matches 1 if score #GLOBAL accelerator_level matches 1.. if score #GLOBAL accelerator_timer matches ..0 run function accelerator/produce
execute unless score #GLOBAL accelerator_disabled matches 1 if score #GLOBAL experiment_cooldown matches 1.. run scoreboard players remove #GLOBAL experiment_cooldown 1

# 진행 중인 실험 카운트다운
execute unless score #GLOBAL accelerator_disabled matches 1 as @a[tag=accelerator_experiment_running,scores={experiment_delay=1..}] run scoreboard players remove @s experiment_delay 1

# 입자가속기가 가동되는 동안 주기적으로 저음의 공명음을 냅니다.
execute unless score #GLOBAL accelerator_disabled matches 1 as @a[tag=accelerator_experiment_running,scores={experiment_delay=80}] at @s run playsound block.beacon.ambient master @s ~ ~ ~ 0.4 0.60
execute unless score #GLOBAL accelerator_disabled matches 1 as @a[tag=accelerator_experiment_running,scores={experiment_delay=60}] at @s run playsound block.beacon.ambient master @s ~ ~ ~ 0.45 0.63
execute unless score #GLOBAL accelerator_disabled matches 1 as @a[tag=accelerator_experiment_running,scores={experiment_delay=40}] at @s run playsound block.beacon.ambient master @s ~ ~ ~ 0.5 0.66
execute unless score #GLOBAL accelerator_disabled matches 1 as @a[tag=accelerator_experiment_running,scores={experiment_delay=20}] at @s run playsound block.beacon.ambient master @s ~ ~ ~ 0.55 0.70
execute unless score #GLOBAL accelerator_disabled matches 1 as @a[tag=accelerator_experiment_running,scores={experiment_delay=40}] run title @s actionbar {text:"충돌 데이터를 분석하는 중...",color:"aqua",italic:false}
execute unless score #GLOBAL accelerator_disabled matches 1 as @a[tag=accelerator_experiment_running,scores={experiment_delay=20}] run title @s actionbar {text:"실험 결과를 계산하는 중...",color:"yellow",italic:false}

# 카운트다운 종료 후 성공/실패 판정
execute unless score #GLOBAL accelerator_disabled matches 1 as @a[tag=accelerator_experiment_running,scores={experiment_delay=..0}] at @s run function accelerator/experiment_resolve

# 외계 간섭은 현대(문명 단계 8)에서만 발생하며, 미래에 진입하면 영구적으로 종료됩니다.
execute if score #overworld civilization_age matches 9.. run scoreboard players set #GLOBAL alien_interference 0
execute if score #overworld civilization_age matches 9.. run scoreboard players set #GLOBAL alien_timer 1200
execute if score #overworld civilization_age matches 8 if score #iron material matches 1000001.. if score #GLOBAL alien_interference matches 0 run function alien/start
execute if score #overworld civilization_age matches 8 if score #GLOBAL alien_interference matches 1 run function alien/tick

# 보호막 상태 변경은 여기 한 곳에서만 수행합니다.
# 미리 충전한 보호막은 외계 간섭이 시작될 때까지 보존합니다.
# 간섭 차단 중에는 5분(6000틱)마다 플레이어가 소지한 시간 1개를 유지비로 사용합니다.
execute if score #GLOBAL alien_interference matches 1 if score #GLOBAL shield_charge matches 1.. run scoreboard players remove #GLOBAL shield_charge 1
execute if score #GLOBAL alien_interference matches 1 if score #GLOBAL shield_charge matches 1.. run scoreboard players remove #GLOBAL shield_maintenance 1
execute if score #GLOBAL alien_interference matches 1 if score #GLOBAL shield_charge matches 1.. if score #GLOBAL shield_maintenance matches ..0 as @a[tag=player,limit=1] run function shield/pay_time
execute unless score #GLOBAL shield_charge matches 1.. run scoreboard players set #GLOBAL shield_maintenance 6000
