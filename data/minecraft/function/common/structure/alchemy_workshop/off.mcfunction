# 구조물 청크 임시 로드
execute in overworld run forceload add -48 -48 -1 -1
scoreboard players set #structure_loaded tmp 0
execute in overworld if loaded -48 64 -48 run scoreboard players add #structure_loaded tmp 1
execute in overworld if loaded -32 64 -48 run scoreboard players add #structure_loaded tmp 1
execute in overworld if loaded -16 64 -48 run scoreboard players add #structure_loaded tmp 1
execute in overworld if loaded -48 64 -32 run scoreboard players add #structure_loaded tmp 1
execute in overworld if loaded -32 64 -32 run scoreboard players add #structure_loaded tmp 1
execute in overworld if loaded -16 64 -32 run scoreboard players add #structure_loaded tmp 1
execute in overworld if loaded -48 64 -16 run scoreboard players add #structure_loaded tmp 1
execute in overworld if loaded -32 64 -16 run scoreboard players add #structure_loaded tmp 1
execute in overworld if loaded -16 64 -16 run scoreboard players add #structure_loaded tmp 1
execute unless score #structure_loaded tmp matches 9 run schedule function minecraft:common/structure/alchemy_workshop/off 1t replace
execute unless score #structure_loaded tmp matches 9 run return 0

#연금술 작업소 비활성화
execute in overworld run data modify block -33 -64 -33 name set value "common:alchemy_workshop_unenabled"
execute in overworld run setblock -34 -64 -33 redstone_block
execute in overworld as @e[tag=potionstands] run data merge entity @s {response:0b}

# 구조물 청크 임시 로드 해제
execute in overworld run forceload remove -48 -48 -1 -1
scoreboard players reset #structure_loaded tmp
