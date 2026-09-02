execute unless score #gold unlock matches 1 run return 0
execute unless score #GLOBAL current_dim matches 1 unless score #gold factory_unlocked matches 1 run return 0
execute unless score #GLOBAL current_dim matches 1 unless score #gold factory_enabled matches 1 run return 0
execute in minecraft:dried run function resource/block/tick {id:"gold",block:"raw_gold_block",x:6,y:65,z:0}
