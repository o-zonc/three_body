execute if score #disable_mob_production var matches 1 run return 0
execute if score #mob_remain generate matches 1.. run return 0

execute unless score #overworld_12 advancement matches 1 run summon experience_orb 3.5 1.5 4.5 {Tags:[mob, xp]}
execute if score #overworld_12 advancement matches 1 if score #overworld_advancement_reward_disabled var matches 1 run summon experience_orb 3.5 1.5 4.5 {Tags:[mob, xp]}
execute unless score #overworld_12 advancement matches 1 as @e[tag=mob,tag=xp,limit=1,type=experience_orb] store result entity @s Value int 1 run function dimensions/overworld/shop/material_shop/value/xp_value
execute if score #overworld_12 advancement matches 1 if score #overworld_advancement_reward_disabled var matches 1 as @e[tag=mob,tag=xp,limit=1,type=experience_orb] store result entity @s Value int 1 run function dimensions/overworld/shop/material_shop/value/xp_value
execute if score #overworld_12 advancement matches 1 unless score #overworld_advancement_reward_disabled var matches 1 store result storage data tmp.exp_points.amount int 1 run function dimensions/overworld/shop/material_shop/value/xp_value
execute if score #overworld_12 advancement matches 1 unless score #overworld_advancement_reward_disabled var matches 1 as @a[tag=player,limit=1] run function player/add_exp_points with storage data tmp.exp_points
data remove storage data tmp.exp_points

execute store result score #mob_remain generate run function resource/overworld/mob/value/regen_value

execute positioned 3.5 1.9375 4.5 run kill @e[tag=mob,type=item_display,distance=..0.2]
playsound entity.vindicator.hurt weather @s 3.5 1.5 4.5 0.8 1.7
particle dust{color:16777215,scale:1f} 3.5 1.5 4.5 0.5 0.5 0.5 0 30 force @a[tag=player]
