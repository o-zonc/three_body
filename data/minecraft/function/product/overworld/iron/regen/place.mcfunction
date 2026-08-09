execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_available_iron_production trial matches 1 run return 0
setblock -19 1 3 iron_ore replace
scoreboard players reset #iron_remain generate
playsound block.stone.place weather @a[tag=player] -18.5 1.5 3.5 1 1.5