# 기존 세이브에 연구 점수가 없을 때만 0으로 생성한다.
# scoreboard 값은 32비트 signed integer이므로 전체 유효 범위를 존재 검사에 사용한다.
execute unless score #time_machine_yellow upgrade matches -2147483648..2147483647 run scoreboard players set #time_machine_yellow upgrade 0
execute unless score #time_machine_blue upgrade matches -2147483648..2147483647 run scoreboard players set #time_machine_blue upgrade 0
execute unless score #time_machine_path_yellow upgrade matches -2147483648..2147483647 run scoreboard players set #time_machine_path_yellow upgrade 0
execute unless score #time_machine_path_blue upgrade matches -2147483648..2147483647 run scoreboard players set #time_machine_path_blue upgrade 0
execute unless score #time_machine_path_green upgrade matches -2147483648..2147483647 run scoreboard players set #time_machine_path_green upgrade 0
execute unless score #time_machine_green_discovered upgrade matches -2147483648..2147483647 run scoreboard players set #time_machine_green_discovered upgrade 0
