# 구조물 청크 임시 로드
execute in frozen run forceload add 0 32 31 63
scoreboard players set #structure_loaded tmp 0
execute in frozen if loaded 0 72 32 run scoreboard players add #structure_loaded tmp 1
execute in frozen if loaded 16 72 32 run scoreboard players add #structure_loaded tmp 1
execute in frozen if loaded 0 72 48 run scoreboard players add #structure_loaded tmp 1
execute in frozen if loaded 16 72 48 run scoreboard players add #structure_loaded tmp 1
execute unless score #structure_loaded tmp matches 4 run schedule function minecraft:frozen/structure/shop/on 1t replace
execute unless score #structure_loaded tmp matches 4 run return 0

execute in frozen run fill 8 74 48 13 77 48 air destroy

#상점 사용 가능
execute in frozen as @e[tag=shop_interaction] run data modify entity @s response set value 1

#폭죽
execute in frozen run particle minecraft:firework 18 74 44 3 3 3 1 300
execute as @a at @s run playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 10
execute as @a at @s run playsound minecraft:entity.firework_rocket.large_blast master @s ~ ~ ~ 10

# 구조물 청크 임시 로드 해제
execute in frozen run forceload remove 0 32 31 63
scoreboard players reset #structure_loaded tmp
