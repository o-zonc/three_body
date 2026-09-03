execute unless score #gold unlock matches 1 in minecraft:dried run setblock 6 65 0 air replace
execute unless score #gold unlock matches 1 run scoreboard players reset #gold_remain generate
execute unless score #gold unlock matches 1 run scoreboard players set #gold_automated_harvest var 0
execute unless score #gold unlock matches 1 run return 0

# 메마른 세계에 있거나 공장이 실제로 해당 노드를 운용 중일 때만 재생 상태를 진행한다.
execute unless score #GLOBAL current_dim matches 1 unless score #gold factory_unlocked matches 1 run return 0
execute unless score #GLOBAL current_dim matches 1 unless score #gold factory_enabled matches 1 run return 0
execute in minecraft:dried run function resource/block/tick {id:"gold",block:"raw_gold_block",x:6,y:65,z:0}
