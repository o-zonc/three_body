# 구조물 청크 임시 로드
execute in overworld run forceload add 0 -16 47 47
scoreboard players set #structure_loaded tmp 0
execute in overworld if loaded 0 64 -16 run scoreboard players add #structure_loaded tmp 1
execute in overworld if loaded 16 64 -16 run scoreboard players add #structure_loaded tmp 1
execute in overworld if loaded 32 64 -16 run scoreboard players add #structure_loaded tmp 1
execute in overworld if loaded 0 64 0 run scoreboard players add #structure_loaded tmp 1
execute in overworld if loaded 16 64 0 run scoreboard players add #structure_loaded tmp 1
execute in overworld if loaded 32 64 0 run scoreboard players add #structure_loaded tmp 1
execute in overworld if loaded 0 64 16 run scoreboard players add #structure_loaded tmp 1
execute in overworld if loaded 16 64 16 run scoreboard players add #structure_loaded tmp 1
execute in overworld if loaded 32 64 16 run scoreboard players add #structure_loaded tmp 1
execute in overworld if loaded 0 64 32 run scoreboard players add #structure_loaded tmp 1
execute in overworld if loaded 16 64 32 run scoreboard players add #structure_loaded tmp 1
execute in overworld if loaded 32 64 32 run scoreboard players add #structure_loaded tmp 1
execute unless score #structure_loaded tmp matches 12 run schedule function minecraft:common/structure/observatory/off 1t replace
execute unless score #structure_loaded tmp matches 12 run return 0

#구조물 끄기
execute in overworld run data modify block 18 -64 18 name set value "common:telescope_disable"
execute in overworld run setblock 18 -64 17 redstone_block

# 구조물 청크 임시 로드 해제
execute in overworld run forceload remove 0 -16 47 47
scoreboard players reset #structure_loaded tmp
