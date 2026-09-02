execute unless score #copper unlock matches 1 in minecraft:overworld run setblock 3 -62 -35 air replace
execute unless score #copper unlock matches 1 run scoreboard players reset #copper_remain generate
execute unless score #copper unlock matches 1 run scoreboard players set #copper_automated_harvest var 0
execute unless score #copper unlock matches 1 run return 0
execute in minecraft:overworld run function resource/block/tick {id:"copper",block:"copper_ore",x:3,y:-62,z:-35}
