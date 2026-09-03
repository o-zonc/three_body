# 돌은 참고 구현처럼 "노드 파괴 감지"와 "나무 채취 횟수 기반 재생성"을 분리한다.
# remain 값은 tick 쿨타임이 아니라 재설치까지 필요한 나무 채취 횟수이다.
scoreboard players set #stone_harvested_this_tick var 0

# 잠긴 동안 이전 문명의 돌 블록이 물리적으로 남지 않게 한다.
execute unless score #stone unlock matches 1 in minecraft:overworld run setblock -3 -59 35 air replace
execute unless score #stone unlock matches 1 run scoreboard players reset #stone_remain generate
execute unless score #stone unlock matches 1 run scoreboard players set #stone_automated_harvest var 0
execute unless score #stone unlock matches 1 run return 0

# 생산 정지 중에는 이전 자동 채굴 신호를 보존하지 않는다.
execute if score #disable_stone_production var matches 1 run scoreboard players set #stone_automated_harvest var 0
execute if score #disable_stone_production var matches 1 run return 0

# 노드 위치에 블록이 있으면 idle 상태이다. remain은 블록이 실제로 사라진 뒤에만 의미를 가진다.
execute in minecraft:overworld unless block -3 -59 35 minecraft:air run scoreboard players reset #stone_remain generate
execute in minecraft:overworld unless block -3 -59 35 minecraft:air run scoreboard players set #stone_automated_harvest var 0
execute in minecraft:overworld unless block -3 -59 35 minecraft:air run return 0

# air + remain 미존재를 단일 파괴 edge로 사용한다.
# 채굴 통계는 수확 자체를 막는 조건이 아니라 카탈리스트 직접 채굴 판정에만 사용한다.
scoreboard players set #catalyst_active_harvest var 0

tag @a remove resource_node_miner
execute unless score #stone_automated_harvest var matches 1 in minecraft:overworld positioned -3 -59 35 as @a[tag=player,scores={stone_node_mined=1..},distance=..6,sort=nearest,limit=1] run tag @s add resource_node_miner
execute if entity @a[tag=resource_node_miner] run scoreboard players set #catalyst_active_harvest var 1

execute in minecraft:overworld if block -3 -59 35 minecraft:air unless score #stone_remain generate = #stone_remain generate run scoreboard players set #stone_harvested_this_tick var 1
execute if score #stone_harvested_this_tick var matches 1 run function resource/material/stone/harvest

tag @a remove resource_node_miner
scoreboard players set #catalyst_active_harvest var 0
scoreboard players set #stone_automated_harvest var 0

# 감소는 wood/harvest -> stone/count에서만 수행한다.
# 0회 단계이거나 이미 필요한 나무 채취 횟수를 모두 채운 상태에서 재설치가 점유 때문에 실패했다면 매 tick 재시도한다.
execute in minecraft:overworld if block -3 -59 35 minecraft:air if score #stone_remain generate matches ..0 run function resource/material/stone/place
