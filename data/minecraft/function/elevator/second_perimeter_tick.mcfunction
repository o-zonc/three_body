# 두 번째 엘리베이터 3층 외곽을 도는 파티클
# 정사각형 범위: X=-32..-16, Y=-46, Z=16..32
# 타임머신이 건설된 Lv.1부터 세대에 맞춰 표시합니다.

# 기존 월드에 남은 중복 마커를 한 번 정리합니다. 궤도 청크는 상시 로드됩니다.
execute unless score #time_machine_perimeter_initialized var matches 1 in overworld run kill @e[type=marker,tag=elevator_2_perimeter]
execute unless score #time_machine_perimeter_initialized var matches 1 run scoreboard players set #time_machine_perimeter_initialized var 1

# 타임머신이 없다면 마커만 정리합니다.
execute unless score #GLOBAL time_machine_level matches 1.. in overworld run kill @e[type=marker,tag=elevator_2_perimeter]
execute unless score #GLOBAL time_machine_level matches 1.. run scoreboard players set #time_machine_perimeter_loaded var 0
execute unless score #GLOBAL time_machine_level matches 1.. run return 0

# 시각 효과의 활성 여부는 타임머신 레벨만 기준으로 판단합니다.
# 전역 차원 상태나 구조물 블록 NBT가 실제 상태와 어긋나도 마커 생성을 막지 않습니다.

# 마커 총수·현재 레벨 설정 태그·방향 태그 수를 검사합니다.
# 하나라도 어긋나면 기존 마커를 전부 지우는 레벨별 setup으로 즉시 재구성합니다.
scoreboard players set #time_machine_perimeter_count tmp 0
scoreboard players set #time_machine_perimeter_config_count tmp 0
scoreboard players set #time_machine_perimeter_direction_count tmp 0
execute in overworld as @e[type=marker,tag=elevator_2_perimeter] run scoreboard players add #time_machine_perimeter_count tmp 1
execute if score #GLOBAL time_machine_level matches 1 in overworld as @e[type=marker,tag=elevator_2_perimeter,tag=elevator_2_config_1] run scoreboard players add #time_machine_perimeter_config_count tmp 1
execute if score #GLOBAL time_machine_level matches 2 in overworld as @e[type=marker,tag=elevator_2_perimeter,tag=elevator_2_config_2] run scoreboard players add #time_machine_perimeter_config_count tmp 1
execute if score #GLOBAL time_machine_level matches 3 in overworld as @e[type=marker,tag=elevator_2_perimeter,tag=elevator_2_config_3] run scoreboard players add #time_machine_perimeter_config_count tmp 1
execute if score #GLOBAL time_machine_level matches 4 in overworld as @e[type=marker,tag=elevator_2_perimeter,tag=elevator_2_config_4] run scoreboard players add #time_machine_perimeter_config_count tmp 1
execute in overworld as @e[type=marker,tag=elevator_2_perimeter,tag=elevator_2_z_positive] run scoreboard players add #time_machine_perimeter_direction_count tmp 1
execute in overworld as @e[type=marker,tag=elevator_2_perimeter,tag=elevator_2_x_negative] run scoreboard players add #time_machine_perimeter_direction_count tmp 1
execute in overworld as @e[type=marker,tag=elevator_2_perimeter,tag=elevator_2_z_negative] run scoreboard players add #time_machine_perimeter_direction_count tmp 1
execute in overworld as @e[type=marker,tag=elevator_2_perimeter,tag=elevator_2_x_positive] run scoreboard players add #time_machine_perimeter_direction_count tmp 1

scoreboard players set #time_machine_perimeter_rebuild tmp 0
execute unless score #time_machine_perimeter_count tmp = #GLOBAL time_machine_level run scoreboard players set #time_machine_perimeter_rebuild tmp 1
execute unless score #time_machine_perimeter_config_count tmp = #GLOBAL time_machine_level run scoreboard players set #time_machine_perimeter_rebuild tmp 1
execute unless score #time_machine_perimeter_direction_count tmp = #GLOBAL time_machine_level run scoreboard players set #time_machine_perimeter_rebuild tmp 1
execute if score #time_machine_perimeter_rebuild tmp matches 1 if score #GLOBAL time_machine_level matches 1 in overworld run function time_machine/perimeter_setup/1
execute if score #time_machine_perimeter_rebuild tmp matches 1 if score #GLOBAL time_machine_level matches 2 in overworld run function time_machine/perimeter_setup/2
execute if score #time_machine_perimeter_rebuild tmp matches 1 if score #GLOBAL time_machine_level matches 3 in overworld run function time_machine/perimeter_setup/3
execute if score #time_machine_perimeter_rebuild tmp matches 1 if score #GLOBAL time_machine_level matches 4 in overworld run function time_machine/perimeter_setup/4

# 파티클은 마커 이동과 함께 매 틱 생성합니다.
# 건물 주변 48블록의 플레이어에게 파티클 설정과 관계없이 보냅니다.
execute in overworld as @e[type=marker,tag=elevator_2_perimeter] at @s run particle end_rod ~ ~ ~ 0 0 0 0 1 force @a[distance=..48]
execute in overworld as @e[type=marker,tag=elevator_2_perimeter] at @s if score #GLOBAL time_machine_level matches 1.. run particle enchant ~ ~0.1 ~ 0.14 0.14 0.14 0.03 2 force @a[distance=..48]
execute in overworld as @e[type=marker,tag=elevator_2_perimeter] at @s if score #GLOBAL time_machine_level matches 2.. run particle portal ~ ~0.15 ~ 0.12 0.12 0.12 0.07 1 force @a[distance=..48]
execute in overworld as @e[type=marker,tag=elevator_2_perimeter] at @s if score #GLOBAL time_machine_level matches 3.. run particle electric_spark ~ ~0.2 ~ 0.12 0.12 0.12 0.03 1 force @a[distance=..48]
execute in overworld as @e[type=marker,tag=elevator_2_perimeter] at @s if score #GLOBAL time_machine_level matches 4 run particle firework ~ ~0.25 ~ 0.15 0.15 0.15 0.04 1 force @a[distance=..48]
execute in overworld as @e[type=marker,tag=elevator_2_perimeter] at @s if score #GLOBAL time_machine_level matches 4 run particle dragon_breath ~ ~0.1 ~ 0.1 0.1 0.1 0.02 1 force @a[distance=..48]

# 이동 자체는 매틱 0.25블록으로 유지해 궤도 속도와 레벨별 연출 타이밍은 바꾸지 않습니다.
execute in overworld as @e[type=marker,tag=elevator_2_z_positive] at @s run tp @s ~ ~ ~0.25
execute in overworld as @e[type=marker,tag=elevator_2_x_negative] at @s run tp @s ~-0.25 ~ ~
execute in overworld as @e[type=marker,tag=elevator_2_z_negative] at @s run tp @s ~ ~ ~-0.25
execute in overworld as @e[type=marker,tag=elevator_2_x_positive] at @s run tp @s ~0.25 ~ ~
execute in overworld as @e[type=marker,tag=elevator_2_perimeter] run scoreboard players add @s tmp 1

# 각 변을 64틱 이동하면 다음 방향으로 전환합니다. (0.25 × 64 = 16블록)
execute in overworld as @e[type=marker,tag=elevator_2_z_positive,scores={tmp=64..}] run function elevator/perimeter_turn/z_positive
execute in overworld as @e[type=marker,tag=elevator_2_x_negative,scores={tmp=64..}] run function elevator/perimeter_turn/x_negative
execute in overworld as @e[type=marker,tag=elevator_2_z_negative,scores={tmp=64..}] run function elevator/perimeter_turn/z_negative
execute in overworld as @e[type=marker,tag=elevator_2_x_positive,scores={tmp=64..}] run function elevator/perimeter_turn/x_positive
