execute unless score #cold unlock matches 1 run return 0
execute unless score #GLOBAL current_dim matches 2 unless score #cold factory_unlocked matches 1 run return 0
execute unless score #GLOBAL current_dim matches 2 unless score #cold factory_enabled matches 1 run return 0
execute in minecraft:frozen run function resource/block/tick {id:"cold",block:"blue_ice",x:0,y:68,z:48}
