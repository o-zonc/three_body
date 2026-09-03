execute unless score #cold unlock matches 1 in minecraft:frozen run setblock 0 68 48 air replace
execute unless score #cold unlock matches 1 run scoreboard players reset #cold_remain generate
execute unless score #cold unlock matches 1 run scoreboard players set #cold_automated_harvest var 0
execute unless score #cold unlock matches 1 run return 0

# 얼어붙은 세계에 있거나 공장이 실제로 해당 노드를 운용 중일 때만 재생 상태를 진행한다.
execute unless score #GLOBAL current_dim matches 2 unless score #cold factory_unlocked matches 1 run return 0
execute unless score #GLOBAL current_dim matches 2 unless score #cold factory_enabled matches 1 run return 0
execute in minecraft:frozen run function resource/block/tick {id:"cold",block:"blue_ice",x:0,y:68,z:48}
