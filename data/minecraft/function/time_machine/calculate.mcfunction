# 현재 세대와 노랑/파랑 연구, 세대 특성을 바탕으로 시간 생산 성능 계산
# 이 함수는 연구/세대 변경 또는 load 때만 호출하고 결과를 var에 캐시한다.

scoreboard players set #time_machine_amount tmp 1
scoreboard players set #time_machine_interval tmp 1200

execute if score #GLOBAL time_machine_level matches 1 store result score #time_machine_amount tmp run data get storage data const.time_machine.base[{lvl:1}].amount
execute if score #GLOBAL time_machine_level matches 1 store result score #time_machine_interval tmp run data get storage data const.time_machine.base[{lvl:1}].interval
execute if score #GLOBAL time_machine_level matches 2 store result score #time_machine_amount tmp run data get storage data const.time_machine.base[{lvl:2}].amount
execute if score #GLOBAL time_machine_level matches 2 store result score #time_machine_interval tmp run data get storage data const.time_machine.base[{lvl:2}].interval
execute if score #GLOBAL time_machine_level matches 3 store result score #time_machine_amount tmp run data get storage data const.time_machine.base[{lvl:3}].amount
execute if score #GLOBAL time_machine_level matches 3 store result score #time_machine_interval tmp run data get storage data const.time_machine.base[{lvl:3}].interval
execute if score #GLOBAL time_machine_level matches 4.. store result score #time_machine_amount tmp run data get storage data const.time_machine.base[{lvl:4}].amount
execute if score #GLOBAL time_machine_level matches 4.. store result score #time_machine_interval tmp run data get storage data const.time_machine.base[{lvl:4}].interval

# 세부 연구 효과
scoreboard players operation #time_machine_amount tmp += #time_machine_yellow upgrade

scoreboard players operation #time_machine_blue_reduction tmp = #time_machine_blue upgrade
scoreboard players set #time_machine_blue_step tmp 25
scoreboard players operation #time_machine_blue_reduction tmp *= #time_machine_blue_step tmp
scoreboard players operation #time_machine_interval tmp -= #time_machine_blue_reduction tmp

# 세대 상승 시 확정된 발전 트리 보너스
scoreboard players operation #time_machine_yellow_path_bonus tmp = #time_machine_path_yellow upgrade
scoreboard players set #time_machine_yellow_path_step tmp 2
scoreboard players operation #time_machine_yellow_path_bonus tmp *= #time_machine_yellow_path_step tmp
scoreboard players operation #time_machine_amount tmp += #time_machine_yellow_path_bonus tmp

scoreboard players operation #time_machine_blue_path_bonus tmp = #time_machine_path_blue upgrade
scoreboard players set #time_machine_blue_path_step tmp 75
scoreboard players operation #time_machine_blue_path_bonus tmp *= #time_machine_blue_path_step tmp
scoreboard players operation #time_machine_interval tmp -= #time_machine_blue_path_bonus tmp

# 숨겨진 초록 세대 보너스
scoreboard players operation #time_machine_green_amount_bonus tmp = #time_machine_path_green upgrade
scoreboard players operation #time_machine_amount tmp += #time_machine_green_amount_bonus tmp
scoreboard players operation #time_machine_green_interval_bonus tmp = #time_machine_path_green upgrade
scoreboard players set #time_machine_green_interval_step tmp 15
scoreboard players operation #time_machine_green_interval_bonus tmp *= #time_machine_green_interval_step tmp
scoreboard players operation #time_machine_interval tmp -= #time_machine_green_interval_bonus tmp

execute if score #time_machine_interval tmp matches ..99 run scoreboard players set #time_machine_interval tmp 100

scoreboard players operation #time_machine_research_total tmp = #time_machine_yellow upgrade
scoreboard players operation #time_machine_research_total tmp += #time_machine_blue upgrade

# 매 tick에서는 이 두 캐시만 읽는다.
scoreboard players operation #time_machine_amount_cached var = #time_machine_amount tmp
scoreboard players operation #time_machine_interval_cached var = #time_machine_interval tmp
