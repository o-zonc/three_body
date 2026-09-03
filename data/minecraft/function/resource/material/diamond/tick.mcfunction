execute unless score #diamond unlock matches 1 in minecraft:frozen run setblock 0 68 -12 air replace
execute unless score #diamond unlock matches 1 run scoreboard players reset #diamond_remain generate
execute unless score #diamond unlock matches 1 run scoreboard players set #diamond_automated_harvest var 0
execute unless score #diamond unlock matches 1 run return 0

# 얼어붙은 세계에 있거나 공장이 실제로 해당 노드를 운용 중일 때만 재생 상태를 진행한다.
execute unless score #GLOBAL current_dim matches 2 unless score #diamond factory_unlocked matches 1 run return 0
execute unless score #GLOBAL current_dim matches 2 unless score #diamond factory_enabled matches 1 run return 0
execute in minecraft:frozen run function resource/block/tick {id:"diamond",block:"diamond_block",x:0,y:68,z:-12}
