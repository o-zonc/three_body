execute unless score #heat unlock matches 1 in minecraft:dried run setblock -6 65 0 air replace
execute unless score #heat unlock matches 1 run scoreboard players reset #heat_remain generate
execute unless score #heat unlock matches 1 run scoreboard players set #heat_automated_harvest var 0
execute unless score #heat unlock matches 1 run return 0

# 메마른 세계에 있거나 공장이 실제로 해당 노드를 운용 중일 때만 재생 상태를 진행합니다.
execute unless score #GLOBAL current_dim matches 1 unless score #heat factory_unlocked matches 1 run return 0
execute unless score #GLOBAL current_dim matches 1 unless score #heat factory_enabled matches 1 run return 0
execute in minecraft:dried run function resource/block/tick {id:"heat",block:"magma_block",x:-6,y:65,z:0}
