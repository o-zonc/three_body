# 현재 세대와 노랑/파랑 연구를 바탕으로 시간 생산 성능 계산
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

# 노랑 연구 1회당 생산량 +1
scoreboard players operation #time_machine_amount tmp += #time_machine_yellow upgrade

# 파랑 연구 1회당 생산 주기 -25틱
scoreboard players operation #time_machine_blue_reduction tmp = #time_machine_blue upgrade
scoreboard players set #time_machine_blue_step tmp 25
scoreboard players operation #time_machine_blue_reduction tmp *= #time_machine_blue_step tmp
scoreboard players operation #time_machine_interval tmp -= #time_machine_blue_reduction tmp
execute if score #time_machine_interval tmp matches ..99 run scoreboard players set #time_machine_interval tmp 100

scoreboard players operation #time_machine_research_total tmp = #time_machine_yellow upgrade
scoreboard players operation #time_machine_research_total tmp += #time_machine_blue upgrade
