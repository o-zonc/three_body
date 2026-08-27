# 구조물 청크 임시 로드
execute in overworld run forceload add -48 0 -1 47
scoreboard players set #structure_loaded tmp 0
execute in overworld if loaded -48 64 0 run scoreboard players add #structure_loaded tmp 1
execute in overworld if loaded -32 64 0 run scoreboard players add #structure_loaded tmp 1
execute in overworld if loaded -16 64 0 run scoreboard players add #structure_loaded tmp 1
execute in overworld if loaded -48 64 16 run scoreboard players add #structure_loaded tmp 1
execute in overworld if loaded -32 64 16 run scoreboard players add #structure_loaded tmp 1
execute in overworld if loaded -16 64 16 run scoreboard players add #structure_loaded tmp 1
execute in overworld if loaded -48 64 32 run scoreboard players add #structure_loaded tmp 1
execute in overworld if loaded -32 64 32 run scoreboard players add #structure_loaded tmp 1
execute in overworld if loaded -16 64 32 run scoreboard players add #structure_loaded tmp 1
execute unless score #structure_loaded tmp matches 9 run schedule function minecraft:common/structure/factory/on 1t replace
execute unless score #structure_loaded tmp matches 9 run return 0

#_________________팩토리 활성화_______________
execute in overworld as @e[tag=factory_interaction] run data merge entity @s {response:1b}
execute in overworld run data modify block -13 -64 35 name set value "common:factory"
execute in overworld run setblock -13 -64 36 redstone_block
#입구 열기
execute in overworld run fill -25 31 4 -17 34 4 air destroy
execute in overworld run fill -4 31 16 -4 34 24 air destroy
#팰월드 오마주
execute in overworld as @e[tag=factory_light] at @s run setblock ~ ~2 ~ minecraft:ochre_froglight
execute in overworld as @e[tag=factory_light] run data merge entity @s {Tags:["factory_light","enabled","3"]}

#___________________폭죽 ________________________
execute in overworld run particle minecraft:firework -24 41 24 10 10 10 1 500
execute as @a at @s run playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 10
execute as @a at @s run playsound minecraft:entity.firework_rocket.large_blast master @s ~ ~ ~ 10

# 구조물 청크 임시 로드 해제
execute in overworld run forceload remove -48 0 -1 47
scoreboard players reset #structure_loaded tmp
