execute in minecraft:frozen positioned 0 68 -12 if entity @a[gamemode=!spectator,dx=0,dy=0,dz=0] run return run scoreboard players set #diamond_remain generate 0
execute in minecraft:frozen run setblock 0 68 -12 diamond_block replace
scoreboard players set #diamond_present_prev var 1
scoreboard players reset #diamond_remain generate
execute in minecraft:frozen run playsound block.stone.place weather @a[tag=player,nbt={Dimension:"minecraft:frozen"}] 0.5 68.5 -11.5 1 1.5
