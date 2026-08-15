execute if score #trial_active trial matches 1 if score #trial_id trial matches 3 if score #dimension_phase trial matches 2 run return 0
execute if score #mob_remain generate matches 1.. run return 0
execute positioned 3.5 1.9375 4.5 unless entity @e[tag=mob,tag=!blaze,type=item_display,distance=..0.2] run return 0
execute as @a[tag=player,limit=1] run function product/overworld/mob/regen/kill
