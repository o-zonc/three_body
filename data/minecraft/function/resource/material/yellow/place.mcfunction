execute in minecraft:overworld positioned -35 -62 -2 if entity @a[gamemode=!spectator,dx=0,dy=0,dz=0] run return run scoreboard players set #yellow_remain generate 0
setblock -35 -62 -2 yellow_glazed_terracotta replace
scoreboard players set #yellow_present_prev var 1
scoreboard players reset #yellow_remain generate
playsound block.stone.place weather @a[tag=player] -34.5 -61.5 -1.5 1 1.5
