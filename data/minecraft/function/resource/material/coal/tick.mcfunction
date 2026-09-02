execute unless score #coal unlock matches 1 in minecraft:overworld run setblock 3 -59 35 air replace
execute unless score #coal unlock matches 1 run scoreboard players reset #coal_remain generate
execute unless score #coal unlock matches 1 run scoreboard players set #coal_automated_harvest var 0
execute unless score #coal unlock matches 1 run return 0
execute in minecraft:overworld run function resource/block/tick {id:"coal",block:"coal_ore",x:3,y:-59,z:35}
