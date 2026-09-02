execute unless score #emerald unlock matches 1 in minecraft:overworld run setblock -1 -62 -35 air replace
execute unless score #emerald unlock matches 1 run scoreboard players reset #emerald_remain generate
execute unless score #emerald unlock matches 1 run scoreboard players set #emerald_automated_harvest var 0
execute unless score #emerald unlock matches 1 run return 0
execute in minecraft:overworld run function resource/block/tick {id:"emerald",block:"emerald_ore",x:-1,y:-62,z:-35}
