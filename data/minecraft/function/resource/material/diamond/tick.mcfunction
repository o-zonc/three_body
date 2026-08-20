execute unless score #diamond unlock matches 1 in minecraft:frozen run setblock 0 68 -12 air replace
execute unless score #diamond unlock matches 1 run return 0
execute in minecraft:frozen run function resource/block/tick {id:"diamond",x:0,y:68,z:-12}
