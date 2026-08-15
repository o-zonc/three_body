execute if score #mob_remain generate matches 1.. run return 0
execute positioned 3.5 1.9375 4.5 unless entity @e[tag=mob,tag=!blaze,type=item_display,distance=..0.2] run return 0
execute as @a[tag=player,limit=1] run function resource/overworld/mob/regen/kill
