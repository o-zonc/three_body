execute in minecraft:dried run setblock -6 65 0 magma_block replace
scoreboard players reset #heat_remain generate
execute in minecraft:dried run playsound block.basalt.place weather @a[tag=player,nbt={Dimension:"minecraft:dried"}] -5.5 65.5 0.5 1 1
