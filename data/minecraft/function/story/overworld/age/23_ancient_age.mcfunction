execute if score #overworld civilization_age matches 5.. run return 0
scoreboard players set #overworld civilization_age 5
advancement grant @a[advancements={0_overworld/14_ancient_age=false}] only 0_overworld/14_ancient_age
# 고대: 상점에서 연금술 공방을 해금할 수 있다.

playsound entity.player.levelup master @s ~ ~ ~ 0.8 1.0
