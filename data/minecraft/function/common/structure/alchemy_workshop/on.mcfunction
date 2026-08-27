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
execute unless score #structure_loaded tmp matches 9 run schedule function minecraft:common/structure/alchemy_workshop/on 1t replace
execute unless score #structure_loaded tmp matches 9 run return 0

#연금술 작업소 활성화
execute in overworld run data modify block -33 -64 -33 name set value "common:alchemy_workshop"
execute in overworld run setblock -34 -64 -33 redstone_block
#입구 열기
execute in overworld run fill -15 31 -4 -10 36 -4 air destroy
execute in overworld run fill -4 31 -15 -4 36 -10 air destroy
#폭죽
execute in overworld run particle minecraft:firework -24 41 -24 10 10 10 1 500
execute as @a at @s run playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 10
execute as @a at @s run playsound minecraft:entity.firework_rocket.large_blast master @s ~ ~ ~ 10
#상호작용 가능 엔티티 회수
execute in overworld as @e[tag=potionstands] run data merge entity @s {response:1b}

# 구조물 청크 임시 로드 해제
execute in overworld run forceload remove -48 -48 -1 -1
scoreboard players reset #structure_loaded tmp
