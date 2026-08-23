execute in minecraft:frozen run setblock 0 68 -12 diamond_block replace
scoreboard players reset #diamond_remain generate
execute in minecraft:frozen run playsound block.stone.place weather @a[tag=player,nbt={Dimension:"minecraft:frozen"}] 0.5 68.5 -11.5 1 1.5
