setblock -17 1 5 obsidian replace
scoreboard players set #obsidian_present generate 1
scoreboard players reset #obsidian_remain generate
playsound block.end_portal_frame.fill weather @a[tag=player] -16.5 1.5 5.5 1 0.7
particle dust{color:16711927,scale:0.8f} -16.5 1.5 5.5 0.3 0.3 0.3 1 100 force @a[tag=player]
function resource/overworld/obsidian/lock/update