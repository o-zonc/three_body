# 구조물 청크 임시 로드
execute in frozen run forceload add 48 0 63 15
scoreboard players set #structure_loaded tmp 0
execute in frozen if loaded 48 72 0 run scoreboard players add #structure_loaded tmp 1
execute unless score #structure_loaded tmp matches 1 run schedule function minecraft:frozen/structure/maze/off 1t replace
execute unless score #structure_loaded tmp matches 1 run return 0

execute in frozen run fill 63 70 11 63 73 15 packed_ice

# 구조물 청크 임시 로드 해제
execute in frozen run forceload remove 48 0 63 15
scoreboard players reset #structure_loaded tmp
