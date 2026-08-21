execute in minecraft:dried run setblock 6 65 0 raw_gold_block replace
scoreboard players reset #gold_remain generate
execute in minecraft:dried run playsound block.stone.place weather @a[tag=player,nbt={Dimension:"minecraft:dried"}] 6.5 65.5 0.5 1 1.5
