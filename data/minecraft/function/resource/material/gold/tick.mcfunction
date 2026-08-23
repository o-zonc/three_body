execute unless score #gold unlock matches 1 in minecraft:dried run setblock 6 65 0 air replace
execute unless score #gold unlock matches 1 run return 0
execute in minecraft:dried run function resource/block/tick {id:"gold",x:6,y:65,z:0}
