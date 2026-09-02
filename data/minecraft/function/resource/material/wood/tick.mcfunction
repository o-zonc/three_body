# 플레이어 채굴은 oak_log 채굴 통계로, 공장 채굴은 기존 자동 채굴 플래그로 구분합니다.
execute unless score #wood unlock matches 1 run return 0
scoreboard players set #wood_harvested_this_tick var 0
scoreboard players set #wood_automated_harvest_this_tick var 0
execute if score #disable_wood_production var matches 1 run return 0

# 자동 채굴을 먼저 소비해 같은 tick의 플레이어 통계와 중복되지 않게 합니다.
execute if score #wood_automated_harvest var matches 1 in minecraft:overworld if block 0 -59 35 minecraft:air run scoreboard players set #wood_automated_harvest_this_tick var 1
execute if score #wood_automated_harvest_this_tick var matches 1 run scoreboard players set #catalyst_active_harvest var 0
execute if score #wood_automated_harvest_this_tick var matches 1 run scoreboard players set #wood_harvested_this_tick var 1
execute if score #wood_automated_harvest_this_tick var matches 1 run function resource/material/wood/harvest

# 실제 oak_log 채굴 통계가 증가했고 노드 주변에서 노드가 air가 된 경우만 플레이어 수확으로 처리합니다.
tag @a remove resource_node_miner
execute unless score #wood_automated_harvest var matches 1 unless score #wood_remain generate = #wood_remain generate in minecraft:overworld positioned 0 -59 35 if block 0 -59 35 minecraft:air as @a[tag=player,scores={wood_node_mined=1..},distance=..6,sort=nearest,limit=1] run tag @s add resource_node_miner
execute if entity @a[tag=resource_node_miner] run scoreboard players set #catalyst_active_harvest var 1
execute if entity @a[tag=resource_node_miner] run scoreboard players set #wood_harvested_this_tick var 1
execute as @a[tag=resource_node_miner,limit=1] run function resource/material/wood/harvest
tag @a remove resource_node_miner

execute in minecraft:overworld if block 0 -59 35 minecraft:air run scoreboard players set #catalyst_active_harvest var 0
scoreboard players set #wood_automated_harvest var 0

# 채굴을 감지한 tick에는 재생 처리를 하지 않아 최소 한 번의 완전한 air tick을 보장합니다.
# 다음 tick부터 카운트를 먼저 줄이고, 0이 된 즉시 설치해 설정된 대기 시간을 정확히 유지합니다.
execute unless score #wood_harvested_this_tick var matches 1 in minecraft:overworld if block 0 -59 35 minecraft:air if score #wood_remain generate matches 1.. run scoreboard players remove #wood_remain generate 1
execute unless score #wood_harvested_this_tick var matches 1 in minecraft:overworld if block 0 -59 35 minecraft:air if score #wood_remain generate matches ..0 run function resource/material/wood/place
