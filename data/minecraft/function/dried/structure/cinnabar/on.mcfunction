# 구조물 청크 임시 로드
execute in dried run forceload add 0 -16 31 15
scoreboard players set #structure_loaded tmp 0
execute in dried if loaded 0 64 -16 run scoreboard players add #structure_loaded tmp 1
execute in dried if loaded 16 64 -16 run scoreboard players add #structure_loaded tmp 1
execute in dried if loaded 0 64 0 run scoreboard players add #structure_loaded tmp 1
execute in dried if loaded 16 64 0 run scoreboard players add #structure_loaded tmp 1
execute unless score #structure_loaded tmp matches 4 run schedule function minecraft:dried/structure/cinnabar/on 1t replace
execute unless score #structure_loaded tmp matches 4 run return 0

#==============================
# 진사 (Cinnabar) 구조물 활성화
# sulfur 좌표를 (0,0) 기준 180도 회전
#==============================

# 기존 대체 구조물을 'cinnabar'로 교체
execute in dried run data modify block 8 62 10 name set value "dried:cinnabar"

# 구조물 블록 작동
execute in dried run setblock 8 62 11 redstone_block

# 폭죽
execute in dried run particle minecraft:firework 18 84 0 10 10 10 1 500
execute as @a at @s run playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 10
execute as @a at @s run playsound minecraft:entity.firework_rocket.large_blast master @s ~ ~ ~ 10

# 구조물 청크 임시 로드 해제
execute in dried run forceload remove 0 -16 31 15
scoreboard players reset #structure_loaded tmp
