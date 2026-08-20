execute in minecraft:frozen run setblock 0 68 48 blue_ice replace
scoreboard players reset #cold_remain generate
execute in minecraft:frozen run playsound block.glass.place weather @a[tag=player,nbt={Dimension:"minecraft:frozen"}] 0.5 68.5 48.5 1 1
