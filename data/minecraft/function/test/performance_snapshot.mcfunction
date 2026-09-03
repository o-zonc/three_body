# 공장·입자가속기·타임머신 건물 성능 진단용 일회성 스냅샷
# /function test/performance_snapshot
# 엔티티마다 명령을 실행하지 않고 execute if entity의 결과값(매칭 수)만 저장한다.
# 따라서 엔티티가 수만 개 누적되어 있어도 command execution limit에 걸리지 않는다.
# 공장 건물 범위: X=-36..8, Y=-64..-32, Z=0..40

scoreboard players set #perf_total tmp 0
scoreboard players set #perf_factory tmp 0
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

execute in overworld store result score #perf_total tmp run execute if entity @e[x=-36,y=-64,z=0,dx=44,dy=32,dz=40]
execute in overworld store result score #perf_factory tmp run execute if entity @e[tag=factory,x=-36,y=-64,z=0,dx=44,dy=32,dz=40]
execute in overworld store result score #perf_interaction tmp run execute if entity @e[type=interaction,x=-36,y=-64,z=0,dx=44,dy=32,dz=40]
execute in overworld store result score #perf_factory_interaction tmp run execute if entity @e[type=interaction,tag=factory,x=-36,y=-64,z=0,dx=44,dy=32,dz=40]
execute in overworld store result score #perf_marker tmp run execute if entity @e[type=marker,x=-36,y=-64,z=0,dx=44,dy=32,dz=40]
execute in overworld store result score #perf_perimeter tmp run execute if entity @e[type=marker,tag=elevator_2_perimeter,x=-36,y=-64,z=0,dx=44,dy=32,dz=40]
execute in overworld store result score #perf_text_display tmp run execute if entity @e[type=text_display,x=-36,y=-64,z=0,dx=44,dy=32,dz=40]
execute in overworld store result score #perf_item_display tmp run execute if entity @e[type=item_display,x=-36,y=-64,z=0,dx=44,dy=32,dz=40]
execute in overworld store result score #perf_block_display tmp run execute if entity @e[type=block_display,x=-36,y=-64,z=0,dx=44,dy=32,dz=40]
execute in overworld store result score #perf_armor_stand tmp run execute if entity @e[type=armor_stand,x=-36,y=-64,z=0,dx=44,dy=32,dz=40]
execute in overworld store result score #perf_item_frame tmp run execute if entity @e[type=item_frame,x=-36,y=-64,z=0,dx=44,dy=32,dz=40]
execute in overworld store result score #perf_glow_frame tmp run execute if entity @e[type=glow_item_frame,x=-36,y=-64,z=0,dx=44,dy=32,dz=40]
execute in overworld store result score #perf_painting tmp run execute if entity @e[type=painting,x=-36,y=-64,z=0,dx=44,dy=32,dz=40]
execute in overworld store result score #perf_item tmp run execute if entity @e[type=item,x=-36,y=-64,z=0,dx=44,dy=32,dz=40]

tellraw @a [{"text":"[건물 성능 진단 1/2] ","color":"gold","bold":true},{"text":"전체=","color":"gray"},{"score":{"name":"#perf_total","objective":"tmp"},"color":"white"},{"text":" / factory tag=","color":"gray"},{"score":{"name":"#perf_factory","objective":"tmp"},"color":"white"},{"text":" / interaction=","color":"gray"},{"score":{"name":"#perf_interaction","objective":"tmp"},"color":"white"},{"text":" / factory interaction=","color":"gray"},{"score":{"name":"#perf_factory_interaction","objective":"tmp"},"color":"white"},{"text":" / marker=","color":"gray"},{"score":{"name":"#perf_marker","objective":"tmp"},"color":"white"},{"text":" / perimeter=","color":"gray"},{"score":{"name":"#perf_perimeter","objective":"tmp"},"color":"white"}]
tellraw @a [{"text":"[건물 성능 진단 2/2] ","color":"gold","bold":true},{"text":"text_display=","color":"gray"},{"score":{"name":"#perf_text_display","objective":"tmp"},"color":"white"},{"text":" / item_display=","color":"gray"},{"score":{"name":"#perf_item_display","objective":"tmp"},"color":"white"},{"text":" / block_display=","color":"gray"},{"score":{"name":"#perf_block_display","objective":"tmp"},"color":"white"},{"text":" / armor_stand=","color":"gray"},{"score":{"name":"#perf_armor_stand","objective":"tmp"},"color":"white"},{"text":" / item_frame=","color":"gray"},{"score":{"name":"#perf_item_frame","objective":"tmp"},"color":"white"},{"text":" / glow_frame=","color":"gray"},{"score":{"name":"#perf_glow_frame","objective":"tmp"},"color":"white"},{"text":" / painting=","color":"gray"},{"score":{"name":"#perf_painting","objective":"tmp"},"color":"white"},{"text":" / dropped item=","color":"gray"},{"score":{"name":"#perf_item","objective":"tmp"},"color":"white"}]
