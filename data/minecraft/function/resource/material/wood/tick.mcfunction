# 참고 구현의 핵심 상태 머신을 유지합니다.
# - 노드가 존재하면 remain 점수를 비워 idle 상태로 둡니다.
# - 노드가 air이고 remain 점수가 없으면 방금 파괴된 것으로 보고 정확히 한 번 수확합니다.
# - remain의 존재 여부만 채굴 edge와 재생 대기 상태의 기준으로 사용합니다.

# restart/정산 등으로 잠긴 동안 이전 노드가 물리적으로 남지 않게 합니다.
execute unless score #wood unlock matches 1 in minecraft:overworld run setblock 0 -59 35 air replace
execute unless score #wood unlock matches 1 run scoreboard players reset #wood_remain generate
execute unless score #wood unlock matches 1 run scoreboard players set #wood_automated_harvest var 0
execute unless score #wood unlock matches 1 run return 0

# 생산 정지 중에는 이전 자동 채굴 신호를 다음 활성화 시점까지 끌고 가지 않습니다.
execute if score #disable_wood_production var matches 1 run scoreboard players set #wood_automated_harvest var 0
execute if score #disable_wood_production var matches 1 run return 0

# 노드 위치에 블록이 있으면 아직 채굴되지 않은 상태입니다.
# 플레이어가 재생성 위치를 점유해 다른 블록이 있는 경우도 덮어쓰지 않습니다.
execute in minecraft:overworld unless block 0 -59 35 minecraft:air run scoreboard players reset #wood_remain generate
execute in minecraft:overworld unless block 0 -59 35 minecraft:air run scoreboard players set #wood_automated_harvest var 0
execute in minecraft:overworld unless block 0 -59 35 minecraft:air run return 0

# air + remain 미존재가 이번 채굴의 단일 edge 신호입니다.
scoreboard players set #catalyst_active_harvest var 0

tag @a remove resource_node_miner
execute unless score #wood_automated_harvest var matches 1 in minecraft:overworld positioned 0 -59 35 as @a[tag=player,scores={wood_node_mined=1..},distance=..6,sort=nearest,limit=1] run tag @s add resource_node_miner
execute if entity @a[tag=resource_node_miner] run scoreboard players set #catalyst_active_harvest var 1

execute in minecraft:overworld if block 0 -59 35 minecraft:air unless score #wood_remain generate = #wood_remain generate run function resource/material/wood/harvest

tag @a remove resource_node_miner
scoreboard players set #catalyst_active_harvest var 0
scoreboard players set #wood_automated_harvest var 0

# 원본 상태 머신 순서: 0 이하는 즉시 배치하고, 1 이상은 한 번 감소한 뒤
# 감소 결과가 0이어도 이 tick에는 배치하지 않습니다.
execute in minecraft:overworld if block 0 -59 35 minecraft:air if score #wood_remain generate matches ..0 run function resource/material/wood/place
execute in minecraft:overworld if block 0 -59 35 minecraft:air if score #wood_remain generate matches 1.. run return run scoreboard players remove #wood_remain generate 1
