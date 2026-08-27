# 구조물 청크 임시 로드
execute in frozen run forceload add -16 0 15 31
scoreboard players set #structure_loaded tmp 0
execute in frozen if loaded -16 72 0 run scoreboard players add #structure_loaded tmp 1
execute in frozen if loaded 0 72 0 run scoreboard players add #structure_loaded tmp 1
execute in frozen if loaded -16 72 16 run scoreboard players add #structure_loaded tmp 1
execute in frozen if loaded 0 72 16 run scoreboard players add #structure_loaded tmp 1
execute unless score #structure_loaded tmp matches 4 run schedule function minecraft:frozen/structure/bridge/on 1t replace
execute unless score #structure_loaded tmp matches 4 run return 0

execute in frozen run fill -1 70 30 1 73 30 air
execute in frozen run fill -1 70 30 0 73 30 spruce_stairs[facing=south,half=top]
execute in frozen run fill 1 70 30 1 73 30 spruce_stairs[facing=south,half=top]
execute in frozen run fill -1 70 6 1 72 6 air

#폭죽
execute in frozen run particle minecraft:firework 0 73 18 5 5 5 1 300
execute as @a at @s run playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 10
execute as @a at @s run playsound minecraft:entity.firework_rocket.large_blast master @s ~ ~ ~ 10

# 업적
execute as @a run advancement grant @s only event:frozen.mcfunction/bridge

# 구조물 청크 임시 로드 해제
execute in frozen run forceload remove -16 0 15 31
scoreboard players reset #structure_loaded tmp
