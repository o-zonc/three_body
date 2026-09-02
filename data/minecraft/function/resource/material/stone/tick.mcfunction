execute unless score #stone unlock matches 1 run return 0

# 돌의 remain 값은 tick 쿨타임이 아니라 재설치까지 필요한 나무 채취 횟수입니다.
# 감소/재설치는 기존 wood/harvest -> stone/count에만 맡깁니다.
execute if score #disable_stone_production var matches 1 run return 0

scoreboard players set #stone_harvested_this_tick var 0
execute if score #stone_automated_harvest var matches 1 in minecraft:overworld if block -3 -59 35 minecraft:air run scoreboard players set #catalyst_active_harvest var 0
execute if score #stone_automated_harvest var matches 1 in minecraft:overworld if block -3 -59 35 minecraft:air run function resource/material/stone/harvest
execute if score #stone_automated_harvest var matches 1 in minecraft:overworld if block -3 -59 35 minecraft:air run scoreboard players set #stone_harvested_this_tick var 1

tag @a remove resource_node_miner
execute unless score #stone_automated_harvest var matches 1 unless score #stone_remain generate = #stone_remain generate in minecraft:overworld positioned -3 -59 35 if block -3 -59 35 minecraft:air as @a[tag=player,scores={stone_node_mined=1..},distance=..6,sort=nearest,limit=1] run tag @s add resource_node_miner
execute if entity @a[tag=resource_node_miner] run scoreboard players set #catalyst_active_harvest var 1
execute if entity @a[tag=resource_node_miner] run scoreboard players set #stone_harvested_this_tick var 1
execute as @a[tag=resource_node_miner,limit=1] run function resource/material/stone/harvest
tag @a remove resource_node_miner

execute in minecraft:overworld if block -3 -59 35 minecraft:air run scoreboard players set #catalyst_active_harvest var 0
scoreboard players set #stone_automated_harvest var 0
execute in minecraft:overworld if block -3 -59 35 minecraft:stone run scoreboard players reset #stone_remain generate
# 필요한 나무 채취 횟수를 이미 모두 채웠다면 점유가 풀리는 즉시 매 tick 재설치를 시도합니다.
execute in minecraft:overworld if block -3 -59 35 minecraft:air if score #stone_remain generate matches ..0 run function resource/material/stone/place
