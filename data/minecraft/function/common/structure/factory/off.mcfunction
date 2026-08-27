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
execute unless score #structure_loaded tmp matches 9 run schedule function minecraft:common/structure/factory/off 1t replace
execute unless score #structure_loaded tmp matches 9 run return 0

#구조물 끄기
execute in overworld run data modify block -13 -64 35 name set value "common:factory_unenabled"
execute in overworld run setblock -13 -64 36 redstone_block
#상호작용 끄기
execute in overworld as @e[tag=factory] run data merge entity @s {response:0b}

#라인 전부 비활성화
execute in overworld as @e[tag="factory_item",tag=!["trashcan","output"]] run item replace contents with air
execute in overworld as @e[tag=factory_light] at @s run setblock ~ ~2 ~ minecraft:verdant_froglight
execute in overworld as @e[tag=factory_light] run data merge entity @s {Tags:["factory_light","disabled"]}

# 구조물 청크 임시 로드 해제
execute in overworld run forceload remove -48 0 -1 47
scoreboard players reset #structure_loaded tmp
