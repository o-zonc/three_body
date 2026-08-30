execute if score #overworld civilization_age matches 1.. run return 0
scoreboard players set #overworld civilization_age 1
advancement grant @a[advancements={0_overworld/10_wood_age=false}] only 0_overworld/10_wood_age

playsound entity.player.levelup master @s ~ ~ ~ 0.8 1.0
