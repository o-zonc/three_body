# 두 번째 엘리베이터 3층 외곽을 도는 end_rod 파티클
# 정사각형 범위: X=-32..-16, Y=-46, Z=16..32
# 미래 시대(문명 9)부터 표시합니다.

# 플레이어가 오버월드에 없으면 시각 효과/마커 이동을 처리하지 않습니다.
execute unless score #GLOBAL current_dim matches 0 run return 0

# 미래 이전에는 구조물 NBT 검사보다 먼저 빠져나옵니다.
execute unless score #overworld civilization_age matches 9.. in overworld run kill @e[type=marker,tag=elevator_2_perimeter]
execute unless score #overworld civilization_age matches 9.. run return 0

# 공장 구조물이 비활성화되어 있으면 마커를 제거하고 재생성하지 않습니다.
execute in overworld unless data block -13 -64 35 {name:"factory"} run kill @e[type=marker,tag=elevator_2_perimeter]
execute in overworld unless data block -13 -64 35 {name:"factory"} run return 0

# 레벨별 마커 수와 간격을 구성합니다. Lv.0~1: 1개 / Lv.2: 2개 / Lv.3: 3개 / Lv.4: 4개
execute if score #GLOBAL time_machine_level matches 0..1 in overworld unless entity @e[type=marker,tag=elevator_2_config_1] run function time_machine/perimeter_setup/1
execute if score #GLOBAL time_machine_level matches 2 in overworld unless entity @e[type=marker,tag=elevator_2_config_2] run function time_machine/perimeter_setup/2
execute if score #GLOBAL time_machine_level matches 3 in overworld unless entity @e[type=marker,tag=elevator_2_config_3] run function time_machine/perimeter_setup/3
execute if score #GLOBAL time_machine_level matches 4 in overworld unless entity @e[type=marker,tag=elevator_2_config_4] run function time_machine/perimeter_setup/4

# 현재 위치에 파티클을 남긴 뒤 한 틱에 0.25블록씩 이동합니다.
execute in overworld as @e[type=marker,tag=elevator_2_perimeter] at @s run particle end_rod ~ ~ ~ 0 0 0 0 1 force @a
execute in overworld as @e[type=marker,tag=elevator_2_perimeter] at @s if score #GLOBAL time_machine_level matches 1.. run particle enchant ~ ~0.1 ~ 0.16 0.16 0.16 0.04 5 force @a
execute in overworld as @e[type=marker,tag=elevator_2_perimeter] at @s if score #GLOBAL time_machine_level matches 2.. run particle portal ~ ~0.15 ~ 0.15 0.15 0.15 0.09 3 force @a
execute in overworld as @e[type=marker,tag=elevator_2_perimeter] at @s if score #GLOBAL time_machine_level matches 3.. run particle electric_spark ~ ~0.2 ~ 0.16 0.16 0.16 0.04 2 force @a
execute in overworld as @e[type=marker,tag=elevator_2_perimeter] at @s if score #GLOBAL time_machine_level matches 4 run particle firework ~ ~0.25 ~ 0.2 0.2 0.2 0.05 3 force @a
execute in overworld as @e[type=marker,tag=elevator_2_perimeter] at @s if score #GLOBAL time_machine_level matches 4 run particle dragon_breath ~ ~0.1 ~ 0.12 0.12 0.12 0.02 2 force @a
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
