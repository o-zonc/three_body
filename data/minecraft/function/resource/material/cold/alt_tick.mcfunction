# 각 위치에서 푸른 얼음이 공기로 바뀌는 순간만 감지한다.
execute in minecraft:frozen if block 0 74 -4 blue_ice run scoreboard players set #cold_alt_north generate 1
execute in minecraft:frozen if block 0 74 4 blue_ice run scoreboard players set #cold_alt_south generate 1

execute in minecraft:frozen if block 0 74 -4 air if score #cold_alt_north generate matches 1 run function resource/material/cold/alt_harvest
execute in minecraft:frozen if block 0 74 -4 air if score #cold_alt_north generate matches 1 run scoreboard players set #cold_alt_north generate 0

execute in minecraft:frozen if block 0 74 4 air if score #cold_alt_south generate matches 1 run function resource/material/cold/alt_harvest
execute in minecraft:frozen if block 0 74 4 air if score #cold_alt_south generate matches 1 run scoreboard players set #cold_alt_south generate 0
