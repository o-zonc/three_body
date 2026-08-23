# 오버월드 성능 진단용 일회성 스냅샷
# /function test/performance_snapshot
# 엔티티가 비정상적으로 누적되는지 빠르게 확인합니다.

scoreboard players set #perf_interaction tmp 0
scoreboard players set #perf_factory_interaction tmp 0
scoreboard players set #perf_marker tmp 0
scoreboard players set #perf_perimeter tmp 0
scoreboard players set #perf_item tmp 0

execute in overworld as @e[type=interaction] run scoreboard players add #perf_interaction tmp 1
execute in overworld as @e[type=interaction,tag=factory] run scoreboard players add #perf_factory_interaction tmp 1
execute in overworld as @e[type=marker] run scoreboard players add #perf_marker tmp 1
execute in overworld as @e[type=marker,tag=elevator_2_perimeter] run scoreboard players add #perf_perimeter tmp 1
execute in overworld as @e[type=item] run scoreboard players add #perf_item tmp 1

tellraw @a [{"text":"[성능 진단] ","color":"gold","bold":true},{"text":"오버월드 interaction=","color":"gray"},{"score":{"name":"#perf_interaction","objective":"tmp"},"color":"white"},{"text":" / factory interaction=","color":"gray"},{"score":{"name":"#perf_factory_interaction","objective":"tmp"},"color":"white"},{"text":" / marker=","color":"gray"},{"score":{"name":"#perf_marker","objective":"tmp"},"color":"white"},{"text":" / perimeter marker=","color":"gray"},{"score":{"name":"#perf_perimeter","objective":"tmp"},"color":"white"},{"text":" / item=","color":"gray"},{"score":{"name":"#perf_item","objective":"tmp"},"color":"white"}]
