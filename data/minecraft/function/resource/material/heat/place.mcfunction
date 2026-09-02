execute in minecraft:dried positioned -6 65 0 if entity @a[gamemode=!spectator,dx=0,dy=0,dz=0] run return run scoreboard players set #heat_remain generate 0
execute in minecraft:dried run setblock -6 65 0 magma_block replace
scoreboard players set #heat_present_prev var 1
scoreboard players reset #heat_remain generate
execute in minecraft:dried run playsound block.basalt.place weather @a[tag=player,nbt={Dimension:"minecraft:dried"}] -5.5 65.5 0.5 1 1
