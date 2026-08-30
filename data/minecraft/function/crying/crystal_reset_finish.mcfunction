# 청크 로드가 끝난 뒤 crystal_state 값만을 기준으로 네 설치 좌표를 보정합니다.
execute in minecraft:polarnight unless score #overworld crystal_state matches 1 positioned 11 67 11 as @e[type=minecraft:end_crystal,distance=..2] run data merge entity @s {Invulnerable:0b}
execute in minecraft:polarnight unless score #overworld crystal_state matches 1 positioned 11 67 11 run kill @e[type=minecraft:end_crystal,distance=..2]
execute in minecraft:polarnight unless score #dried crystal_state matches 1 positioned -11 67 11 as @e[type=minecraft:end_crystal,distance=..2] run data merge entity @s {Invulnerable:0b}
execute in minecraft:polarnight unless score #dried crystal_state matches 1 positioned -11 67 11 run kill @e[type=minecraft:end_crystal,distance=..2]
execute in minecraft:polarnight unless score #frozen crystal_state matches 1 positioned 11 67 -11 as @e[type=minecraft:end_crystal,distance=..2] run data merge entity @s {Invulnerable:0b}
execute in minecraft:polarnight unless score #frozen crystal_state matches 1 positioned 11 67 -11 run kill @e[type=minecraft:end_crystal,distance=..2]
execute in minecraft:polarnight unless score #dawn crystal_state matches 1 positioned -11 67 -11 as @e[type=minecraft:end_crystal,distance=..2] run data merge entity @s {Invulnerable:0b}
execute in minecraft:polarnight unless score #dawn crystal_state matches 1 positioned -11 67 -11 run kill @e[type=minecraft:end_crystal,distance=..2]

execute if score #overworld crystal_state matches 1 run function crying/crystal_place_apply {id:"overworld",x:11,z:11}
execute if score #dried crystal_state matches 1 run function crying/crystal_place_apply {id:"dried",x:-11,z:11}
execute if score #frozen crystal_state matches 1 run function crying/crystal_place_apply {id:"frozen",x:11,z:-11}
execute if score #dawn crystal_state matches 1 run function crying/crystal_place_apply {id:"dawn",x:-11,z:-11}

execute in minecraft:polarnight run tag @e[type=minecraft:end_crystal,tag=crying_crystal_keeper] remove crying_crystal_keeper
execute if score #crystal_reset_forceload_owned var matches 1 in minecraft:polarnight run forceload remove -11 -11 11 11
scoreboard players set #crystal_reset_forceload_owned var 0
scoreboard players set #crystal_reset_pending var 0
