# Generic time-based block resource state machine.
# Macro args: id, block, x, y, z
$execute if score #disable_$(id)_production var matches 1 run return 0

# 자동 채굴 플래그를 먼저 소비해 같은 tick의 플레이어 통계와 겹쳐도 한 번만 수확합니다.
$scoreboard players set #$(id)_harvested_this_tick var 0
$execute if score #$(id)_automated_harvest var matches 1 if block $(x) $(y) $(z) air run scoreboard players set #catalyst_active_harvest var 0
$execute if score #$(id)_automated_harvest var matches 1 if block $(x) $(y) $(z) air run function resource/material/$(id)/harvest
$execute if score #$(id)_automated_harvest var matches 1 if block $(x) $(y) $(z) air run scoreboard players set #$(id)_harvested_this_tick var 1

# 플레이어 채굴은 해당 블록의 minecraft.mined 통계, 현재 차원, 근거리, air를 모두 만족할 때만 소비합니다.
tag @a remove resource_node_miner
$execute unless score #$(id)_automated_harvest var matches 1 unless score #$(id)_remain generate = #$(id)_remain generate positioned $(x) $(y) $(z) if block $(x) $(y) $(z) air as @a[tag=player,scores={$(id)_node_mined=1..},distance=..6,sort=nearest,limit=1] run tag @s add resource_node_miner
execute if entity @a[tag=resource_node_miner] run scoreboard players set #catalyst_active_harvest var 1
$execute if entity @a[tag=resource_node_miner] run scoreboard players set #$(id)_harvested_this_tick var 1
$execute as @a[tag=resource_node_miner,limit=1] run function resource/material/$(id)/harvest
tag @a remove resource_node_miner

$execute if block $(x) $(y) $(z) air run scoreboard players set #catalyst_active_harvest var 0
$scoreboard players set #$(id)_automated_harvest var 0
$execute if block $(x) $(y) $(z) air if score #$(id)_remain generate matches ..0 run function resource/material/$(id)/place
$execute if block $(x) $(y) $(z) air if score #$(id)_remain generate matches 1.. run scoreboard players remove #$(id)_remain generate 1
$execute if block $(x) $(y) $(z) $(block) run scoreboard players reset #$(id)_remain generate
