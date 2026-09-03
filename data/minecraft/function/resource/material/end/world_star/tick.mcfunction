# 상태: 0=미등장, 1=채굴 대기, 2=획득 완료
execute unless score #world_star_state var matches 1 run return 0
execute in minecraft:overworld unless block 35 -59 0 minecraft:air run return 0

tag @a remove world_star_miner
execute in minecraft:overworld positioned 35 -59 0 as @a[tag=player,scores={world_star_node_mined=1..},distance=..6,sort=nearest,limit=1] run tag @s add world_star_miner

# 플레이어 채굴 기록 없이 사라졌다면 일회성 노드를 복구한다.
execute unless entity @a[tag=world_star_miner] in minecraft:overworld run setblock 35 -59 0 minecraft:quartz_block replace
execute unless entity @a[tag=world_star_miner] run return 0

scoreboard players set #world_star_state var 2
execute as @a[tag=world_star_miner] run function resource/material/end/world_star/give
tag @a remove world_star_miner
