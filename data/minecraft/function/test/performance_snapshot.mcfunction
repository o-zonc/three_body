# 공장·입자가속기·타임머신 건물 성능 진단용 일회성 스냅샷
# /function test/performance_snapshot
# 공장 구조물 블록(-13,-64,35) 주변 64블록 안의 엔티티를 종류별로 셉니다.
# 바라볼 때 FPS가 크게 떨어지는 경우 구조물에 저장된 렌더 엔티티/interaction 중복을 찾는 용도입니다.

scoreboard players set #perf_total tmp 0
scoreboard players set #perf_interaction tmp 0
scoreboard players set #perf_factory_interaction tmp 0
scoreboard players set #perf_marker tmp 0
scoreboard players set #perf_perimeter tmp 0
scoreboard players set #perf_text_display tmp 0
scoreboard players set #perf_item_display tmp 0
scoreboard players set #perf_block_display tmp 0
scoreboard players set #perf_armor_stand tmp 0
scoreboard players set #perf_item_frame tmp 0
scoreboard players set #perf_glow_frame tmp 0
scoreboard players set #perf_painting tmp 0
scoreboard players set #perf_item tmp 0

execute in overworld positioned -13 -48 24 as @e[distance=..64] run scoreboard players add #perf_total tmp 1
execute in overworld positioned -13 -48 24 as @e[type=interaction,distance=..64] run scoreboard players add #perf_interaction tmp 1
execute in overworld positioned -13 -48 24 as @e[type=interaction,tag=factory,distance=..64] run scoreboard players add #perf_factory_interaction tmp 1
execute in overworld positioned -13 -48 24 as @e[type=marker,distance=..64] run scoreboard players add #perf_marker tmp 1
execute in overworld positioned -13 -48 24 as @e[type=marker,tag=elevator_2_perimeter,distance=..64] run scoreboard players add #perf_perimeter tmp 1
execute in overworld positioned -13 -48 24 as @e[type=text_display,distance=..64] run scoreboard players add #perf_text_display tmp 1
execute in overworld positioned -13 -48 24 as @e[type=item_display,distance=..64] run scoreboard players add #perf_item_display tmp 1
execute in overworld positioned -13 -48 24 as @e[type=block_display,distance=..64] run scoreboard players add #perf_block_display tmp 1
execute in overworld positioned -13 -48 24 as @e[type=armor_stand,distance=..64] run scoreboard players add #perf_armor_stand tmp 1
execute in overworld positioned -13 -48 24 as @e[type=item_frame,distance=..64] run scoreboard players add #perf_item_frame tmp 1
execute in overworld positioned -13 -48 24 as @e[type=glow_item_frame,distance=..64] run scoreboard players add #perf_glow_frame tmp 1
execute in overworld positioned -13 -48 24 as @e[type=painting,distance=..64] run scoreboard players add #perf_painting tmp 1
execute in overworld positioned -13 -48 24 as @e[type=item,distance=..64] run scoreboard players add #perf_item tmp 1

tellraw @a [{"text":"[건물 성능 진단 1/2] ","color":"gold","bold":true},{"text":"전체=","color":"gray"},{"score":{"name":"#perf_total","objective":"tmp"},"color":"white"},{"text":" / interaction=","color":"gray"},{"score":{"name":"#perf_interaction","objective":"tmp"},"color":"white"},{"text":" / factory interaction=","color":"gray"},{"score":{"name":"#perf_factory_interaction","objective":"tmp"},"color":"white"},{"text":" / marker=","color":"gray"},{"score":{"name":"#perf_marker","objective":"tmp"},"color":"white"},{"text":" / perimeter=","color":"gray"},{"score":{"name":"#perf_perimeter","objective":"tmp"},"color":"white"}]
tellraw @a [{"text":"[건물 성능 진단 2/2] ","color":"gold","bold":true},{"text":"text_display=","color":"gray"},{"score":{"name":"#perf_text_display","objective":"tmp"},"color":"white"},{"text":" / item_display=","color":"gray"},{"score":{"name":"#perf_item_display","objective":"tmp"},"color":"white"},{"text":" / block_display=","color":"gray"},{"score":{"name":"#perf_block_display","objective":"tmp"},"color":"white"},{"text":" / armor_stand=","color":"gray"},{"score":{"name":"#perf_armor_stand","objective":"tmp"},"color":"white"},{"text":" / item_frame=","color":"gray"},{"score":{"name":"#perf_item_frame","objective":"tmp"},"color":"white"},{"text":" / glow_frame=","color":"gray"},{"score":{"name":"#perf_glow_frame","objective":"tmp"},"color":"white"},{"text":" / painting=","color":"gray"},{"score":{"name":"#perf_painting","objective":"tmp"},"color":"white"},{"text":" / dropped item=","color":"gray"},{"score":{"name":"#perf_item","objective":"tmp"},"color":"white"}]
