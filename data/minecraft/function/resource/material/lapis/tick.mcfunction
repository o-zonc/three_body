execute unless score #lapis unlock matches 1 in minecraft:overworld run setblock -3 -62 -35 air replace
execute unless score #lapis unlock matches 1 run scoreboard players reset #lapis_remain generate
execute unless score #lapis unlock matches 1 run scoreboard players set #lapis_automated_harvest var 0
execute unless score #lapis unlock matches 1 run return 0
execute in minecraft:overworld run function resource/block/tick {id:"lapis",block:"lapis_ore",x:-3,y:-62,z:-35}
