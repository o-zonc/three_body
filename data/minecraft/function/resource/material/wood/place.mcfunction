execute in minecraft:overworld positioned 0 -59 35 if entity @a[gamemode=!spectator,dx=0,dy=0,dz=0] run return run scoreboard players set #wood_remain generate 0
setblock 0 -59 35 oak_log replace
scoreboard players set #wood_present_prev var 1
scoreboard players reset #wood_remain generate
playsound block.wood.place weather @a[tag=player] 0.5 -58.5 35.5 1 1.5
