execute if score #trial_active trial matches 1 if score #trial_id trial matches 3 if score #dimension_phase trial matches 1 run return 0
execute if score #blaze_remain generate matches 1.. run return 0
execute positioned -76.5 1.9375 13.5 unless entity @e[tag=blaze,type=item_display,distance=..0.2] run return 0
execute as @a[tag=player,limit=1] run function product/nether/blaze/regen/kill
