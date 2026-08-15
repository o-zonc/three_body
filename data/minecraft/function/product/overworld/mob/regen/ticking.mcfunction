execute if score #disable_mob_production var matches 1 run return 0
execute unless score #mob unlock matches 1 positioned 3.5 1.9375 4.5 run kill @e[tag=mob,tag=!blaze,type=item_display,distance=..0.2]
execute unless score #mob unlock matches 1 run return 0

execute positioned 3.5 1.9375 4.5 unless entity @e[tag=mob,tag=!blaze,distance=..0.2,type=item_display] unless score #mob_remain generate = #mob_remain generate run function product/overworld/mob/regen/summon

execute if score #mob_remain generate matches ..0 run function product/overworld/mob/regen/summon

execute if score #mob_remain generate matches 1.. run return run scoreboard players remove #mob_remain generate 1