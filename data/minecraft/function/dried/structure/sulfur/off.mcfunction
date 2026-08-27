# 구조물 청크 임시 로드
execute in dried run forceload add -32 -16 -1 15
scoreboard players set #structure_loaded tmp 0
execute in dried if loaded -32 64 -16 run scoreboard players add #structure_loaded tmp 1
execute in dried if loaded -16 64 -16 run scoreboard players add #structure_loaded tmp 1
execute in dried if loaded -32 64 0 run scoreboard players add #structure_loaded tmp 1
execute in dried if loaded -16 64 0 run scoreboard players add #structure_loaded tmp 1
execute unless score #structure_loaded tmp matches 4 run schedule function minecraft:dried/structure/sulfur/off 1t replace
execute unless score #structure_loaded tmp matches 4 run return 0

#==============================
# 황 (Sulfur) 구조물 비활성화
#==============================

# 황 구조물을 비활성 구조물로 교체
execute in dried run data modify block -8 62 -10 name set value "dried:sulfur_unenabled"
execute in dried run setblock -8 62 -11 redstone_block

# 관련 효과 제거
execute in dried run kill @e[type=item_display,tag=probability_information]

# 구조물 청크 임시 로드 해제
execute in dried run forceload remove -32 -16 -1 15
scoreboard players reset #structure_loaded tmp
