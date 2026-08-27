# 구조물 청크 임시 로드
execute in dried run forceload add -32 -16 -1 15
scoreboard players set #structure_loaded tmp 0
execute in dried if loaded -32 64 -16 run scoreboard players add #structure_loaded tmp 1
execute in dried if loaded -16 64 -16 run scoreboard players add #structure_loaded tmp 1
execute in dried if loaded -32 64 0 run scoreboard players add #structure_loaded tmp 1
execute in dried if loaded -16 64 0 run scoreboard players add #structure_loaded tmp 1
execute unless score #structure_loaded tmp matches 4 run schedule function minecraft:dried/structure/sulfur/on 1t replace
execute unless score #structure_loaded tmp matches 4 run return 0

#==============================
# 황 (Sulfur) 구조물 활성화
#==============================

# 기존 대체 구조물을 'sulfur'로 교체
execute in dried run data modify block -8 62 -10 name set value "dried:sulfur"

# 구조물 블록 작동
execute in dried run setblock -8 62 -11 redstone_block

# 확률 조정 정보/상호작용 초기화
execute in dried run kill @e[type=interaction,tag=recycle]
execute in dried run kill @e[type=interaction,tag=potion]
execute in dried run kill @e[type=interaction,tag=probability]
execute in dried run kill @e[type=item_display,tag=probability_information]

# 폭죽
execute in dried run particle minecraft:firework -20 84 0 10 10 10 1 500
execute as @a at @s run playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 10
execute as @a at @s run playsound minecraft:entity.firework_rocket.large_blast master @s ~ ~ ~ 10

# 구조물 청크 임시 로드 해제
execute in dried run forceload remove -32 -16 -1 15
scoreboard players reset #structure_loaded tmp
