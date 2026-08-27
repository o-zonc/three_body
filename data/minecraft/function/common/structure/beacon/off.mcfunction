# 구조물 청크 임시 로드
execute in overworld run forceload add 0 -48 47 -1
scoreboard players set #structure_loaded tmp 0
execute in overworld if loaded 0 64 -48 run scoreboard players add #structure_loaded tmp 1
execute in overworld if loaded 16 64 -48 run scoreboard players add #structure_loaded tmp 1
execute in overworld if loaded 32 64 -48 run scoreboard players add #structure_loaded tmp 1
execute in overworld if loaded 0 64 -32 run scoreboard players add #structure_loaded tmp 1
execute in overworld if loaded 16 64 -32 run scoreboard players add #structure_loaded tmp 1
execute in overworld if loaded 32 64 -32 run scoreboard players add #structure_loaded tmp 1
execute in overworld if loaded 0 64 -16 run scoreboard players add #structure_loaded tmp 1
execute in overworld if loaded 16 64 -16 run scoreboard players add #structure_loaded tmp 1
execute in overworld if loaded 32 64 -16 run scoreboard players add #structure_loaded tmp 1
execute unless score #structure_loaded tmp matches 9 run schedule function minecraft:common/structure/beacon/off 1t replace
execute unless score #structure_loaded tmp matches 9 run return 0

#비콘 비활성화
execute in overworld run data modify block 18 -64 -30 name set value "common:beacon_unenabled"
execute in overworld run setblock 18 -64 -31 redstone_block

# 구조물 청크 임시 로드 해제
execute in overworld run forceload remove 0 -48 47 -1
scoreboard players reset #structure_loaded tmp
