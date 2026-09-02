execute unless score #diamond unlock matches 1 run return 0
execute unless score #GLOBAL current_dim matches 2 unless score #diamond factory_unlocked matches 1 run return 0
execute unless score #GLOBAL current_dim matches 2 unless score #diamond factory_enabled matches 1 run return 0
execute in minecraft:frozen run function resource/block/tick {id:"diamond",block:"diamond_block",x:0,y:68,z:-12}
