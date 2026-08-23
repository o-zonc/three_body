# 기존 세이브/첫 건설에서도 연구 점수가 항상 존재하도록 초기화합니다.
execute unless score #time_machine_yellow upgrade matches .. run scoreboard players set #time_machine_yellow upgrade 0
execute unless score #time_machine_blue upgrade matches .. run scoreboard players set #time_machine_blue upgrade 0
execute unless score #time_machine_path_yellow upgrade matches .. run scoreboard players set #time_machine_path_yellow upgrade 0
execute unless score #time_machine_path_blue upgrade matches .. run scoreboard players set #time_machine_path_blue upgrade 0
execute unless score #time_machine_path_green upgrade matches .. run scoreboard players set #time_machine_path_green upgrade 0
execute unless score #time_machine_green_discovered upgrade matches .. run scoreboard players set #time_machine_green_discovered upgrade 0

function time_machine/calculate
scoreboard players set #time_machine_next_step tmp 0
scoreboard players operation #time_machine_next_step tmp = #time_machine_research_total tmp
scoreboard players add #time_machine_next_step tmp 1

scoreboard players set #time_machine_color_cost tmp 0
scoreboard players set #time_machine_broken_cost tmp 0
scoreboard players set #time_machine_time_cost tmp 0

execute if score #time_machine_next_step tmp matches 1 store result score #time_machine_color_cost tmp run data get storage data const.time_machine.research[{step:1}].color
execute if score #time_machine_next_step tmp matches 1 store result score #time_machine_broken_cost tmp run data get storage data const.time_machine.research[{step:1}].broken
execute if score #time_machine_next_step tmp matches 1 store result score #time_machine_time_cost tmp run data get storage data const.time_machine.research[{step:1}].time
execute if score #time_machine_next_step tmp matches 2 store result score #time_machine_color_cost tmp run data get storage data const.time_machine.research[{step:2}].color
execute if score #time_machine_next_step tmp matches 2 store result score #time_machine_broken_cost tmp run data get storage data const.time_machine.research[{step:2}].broken
execute if score #time_machine_next_step tmp matches 2 store result score #time_machine_time_cost tmp run data get storage data const.time_machine.research[{step:2}].time
execute if score #time_machine_next_step tmp matches 3 store result score #time_machine_color_cost tmp run data get storage data const.time_machine.research[{step:3}].color
execute if score #time_machine_next_step tmp matches 3 store result score #time_machine_broken_cost tmp run data get storage data const.time_machine.research[{step:3}].broken
execute if score #time_machine_next_step tmp matches 3 store result score #time_machine_time_cost tmp run data get storage data const.time_machine.research[{step:3}].time
execute if score #time_machine_next_step tmp matches 4 store result score #time_machine_color_cost tmp run data get storage data const.time_machine.research[{step:4}].color
execute if score #time_machine_next_step tmp matches 4 store result score #time_machine_broken_cost tmp run data get storage data const.time_machine.research[{step:4}].broken
execute if score #time_machine_next_step tmp matches 4 store result score #time_machine_time_cost tmp run data get storage data const.time_machine.research[{step:4}].time
execute if score #time_machine_next_step tmp matches 5 store result score #time_machine_color_cost tmp run data get storage data const.time_machine.research[{step:5}].color
execute if score #time_machine_next_step tmp matches 5 store result score #time_machine_broken_cost tmp run data get storage data const.time_machine.research[{step:5}].broken
execute if score #time_machine_next_step tmp matches 5 store result score #time_machine_time_cost tmp run data get storage data const.time_machine.research[{step:5}].time
execute if score #time_machine_next_step tmp matches 6 store result score #time_machine_color_cost tmp run data get storage data const.time_machine.research[{step:6}].color
execute if score #time_machine_next_step tmp matches 6 store result score #time_machine_broken_cost tmp run data get storage data const.time_machine.research[{step:6}].broken
execute if score #time_machine_next_step tmp matches 6 store result score #time_machine_time_cost tmp run data get storage data const.time_machine.research[{step:6}].time
execute if score #time_machine_next_step tmp matches 7 store result score #time_machine_color_cost tmp run data get storage data const.time_machine.research[{step:7}].color
execute if score #time_machine_next_step tmp matches 7 store result score #time_machine_broken_cost tmp run data get storage data const.time_machine.research[{step:7}].broken
execute if score #time_machine_next_step tmp matches 7 store result score #time_machine_time_cost tmp run data get storage data const.time_machine.research[{step:7}].time
execute if score #time_machine_next_step tmp matches 8 store result score #time_machine_color_cost tmp run data get storage data const.time_machine.research[{step:8}].color
execute if score #time_machine_next_step tmp matches 8 store result score #time_machine_broken_cost tmp run data get storage data const.time_machine.research[{step:8}].broken
execute if score #time_machine_next_step tmp matches 8 store result score #time_machine_time_cost tmp run data get storage data const.time_machine.research[{step:8}].time
execute if score #time_machine_next_step tmp matches 9 store result score #time_machine_color_cost tmp run data get storage data const.time_machine.research[{step:9}].color
execute if score #time_machine_next_step tmp matches 9 store result score #time_machine_broken_cost tmp run data get storage data const.time_machine.research[{step:9}].broken
execute if score #time_machine_next_step tmp matches 9 store result score #time_machine_time_cost tmp run data get storage data const.time_machine.research[{step:9}].time
execute if score #time_machine_next_step tmp matches 10 store result score #time_machine_color_cost tmp run data get storage data const.time_machine.research[{step:10}].color
execute if score #time_machine_next_step tmp matches 10 store result score #time_machine_broken_cost tmp run data get storage data const.time_machine.research[{step:10}].broken
execute if score #time_machine_next_step tmp matches 10 store result score #time_machine_time_cost tmp run data get storage data const.time_machine.research[{step:10}].time
execute if score #time_machine_next_step tmp matches 11 store result score #time_machine_color_cost tmp run data get storage data const.time_machine.research[{step:11}].color
execute if score #time_machine_next_step tmp matches 11 store result score #time_machine_broken_cost tmp run data get storage data const.time_machine.research[{step:11}].broken
execute if score #time_machine_next_step tmp matches 11 store result score #time_machine_time_cost tmp run data get storage data const.time_machine.research[{step:11}].time
execute if score #time_machine_next_step tmp matches 12 store result score #time_machine_color_cost tmp run data get storage data const.time_machine.research[{step:12}].color
execute if score #time_machine_next_step tmp matches 12 store result score #time_machine_broken_cost tmp run data get storage data const.time_machine.research[{step:12}].broken
execute if score #time_machine_next_step tmp matches 12 store result score #time_machine_time_cost tmp run data get storage data const.time_machine.research[{step:12}].time
