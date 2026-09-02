execute in minecraft:frozen positioned 0 68 48 if entity @a[gamemode=!spectator,dx=0,dy=0,dz=0] run return run scoreboard players set #cold_remain generate 0
execute in minecraft:frozen run setblock 0 68 48 blue_ice replace
scoreboard players set #cold_present_prev var 1
scoreboard players reset #cold_remain generate
execute in minecraft:frozen run playsound block.glass.place weather @a[tag=player,nbt={Dimension:"minecraft:frozen"}] 0.5 68.5 48.5 1 1
