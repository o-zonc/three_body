setblock -47 1 4 nether_quartz_ore replace
scoreboard players set #quartz_present generate 1
scoreboard players reset #quartz_remain generate

playsound block.bone_block.place weather @a[tag=player] -46.5 1.5 4.5 1 1.5
