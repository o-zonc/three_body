execute in minecraft:overworld positioned 3 -59 35 if entity @a[gamemode=!spectator,dx=0,dy=0,dz=0] run return run scoreboard players set #coal_remain generate 0
setblock 3 -59 35 coal_ore replace
scoreboard players set #coal_present_prev var 1
scoreboard players reset #coal_remain generate
playsound block.stone.place weather @a[tag=player] 3.5 -58.5 35.5 1 1.5
