execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_available_coal_production trial matches 1 run return 0
setblock -15 1 3 coal_ore replace
scoreboard players reset #coal_remain generate
playsound block.stone.place weather @a[tag=player] -14.5 1.5 3.5 1 1.5