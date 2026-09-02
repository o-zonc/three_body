execute unless score #heat unlock matches 1 run return 0
execute unless score #GLOBAL current_dim matches 1 unless score #heat factory_unlocked matches 1 run return 0
execute unless score #GLOBAL current_dim matches 1 unless score #heat factory_enabled matches 1 run return 0
execute in minecraft:dried run function resource/block/tick {id:"heat",block:"magma_block",x:-6,y:65,z:0}
