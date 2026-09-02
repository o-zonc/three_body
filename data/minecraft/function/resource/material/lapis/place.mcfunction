execute in minecraft:overworld positioned -3 -62 -35 if entity @a[gamemode=!spectator,dx=0,dy=0,dz=0] run return run scoreboard players set #lapis_remain generate 0
setblock -3 -62 -35 lapis_ore replace
scoreboard players set #lapis_present_prev var 1
scoreboard players reset #lapis_remain generate
playsound block.stone.place weather @a[tag=player] -2.5 -61.5 -34.5 1 1.5
