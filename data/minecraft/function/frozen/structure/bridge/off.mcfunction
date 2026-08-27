# 구조물 청크 임시 로드
execute in frozen run forceload add -16 0 15 31
scoreboard players set #structure_loaded tmp 0
execute in frozen if loaded -16 72 0 run scoreboard players add #structure_loaded tmp 1
execute in frozen if loaded 0 72 0 run scoreboard players add #structure_loaded tmp 1
execute in frozen if loaded -16 72 16 run scoreboard players add #structure_loaded tmp 1
execute in frozen if loaded 0 72 16 run scoreboard players add #structure_loaded tmp 1
execute unless score #structure_loaded tmp matches 4 run schedule function minecraft:frozen/structure/bridge/off 1t replace
execute unless score #structure_loaded tmp matches 4 run return 0

execute in frozen run fill -1 70 30 0 73 30 white_stained_glass
execute in frozen run fill 1 70 30 1 73 30 polished_blackstone_brick_wall
execute in frozen run fill -1 70 6 0 72 6 white_stained_glass
execute in frozen run fill 1 70 6 1 72 6 polished_blackstone_brick_wall

# 구조물 청크 임시 로드 해제
execute in frozen run forceload remove -16 0 15 31
scoreboard players reset #structure_loaded tmp
