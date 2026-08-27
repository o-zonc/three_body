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
execute unless score #structure_loaded tmp matches 12 run schedule function minecraft:common/structure/observatory/on 1t replace
execute unless score #structure_loaded tmp matches 12 run return 0

#___________전파 망원경 활성화___________________
execute in overworld run data modify block 18 -64 18 name set value "common:telescope"
execute in overworld run setblock 18 -64 17 redstone_block
#입구 열기
execute in overworld run fill 23 31 -4 25 34 -4 air destroy
execute in overworld run fill 23 31 -4 25 34 -4 air destroy
#___________________폭죽 ________________________
execute in overworld run particle minecraft:firework 24 41 24 10 10 10 1 500
execute as @a at @s run playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 10
execute as @a at @s run playsound minecraft:entity.firework_rocket.large_blast master @s ~ ~ ~ 10

# 구조물 청크 임시 로드 해제
execute in overworld run forceload remove 0 -16 47 47
scoreboard players reset #structure_loaded tmp
