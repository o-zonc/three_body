execute in minecraft:overworld positioned -1 -62 -35 if entity @a[gamemode=!spectator,dx=0,dy=0,dz=0] run return run scoreboard players set #emerald_remain generate 0
setblock -1 -62 -35 emerald_ore replace
scoreboard players set #emerald_present_prev var 1
scoreboard players reset #emerald_remain generate
playsound block.stone.place weather @a[tag=player] -0.5 -61.5 -34.5 1 1.5
