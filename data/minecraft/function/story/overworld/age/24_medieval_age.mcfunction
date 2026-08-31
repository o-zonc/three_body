execute if score #overworld civilization_age matches 6.. run return 0
scoreboard players set #overworld civilization_age 6
advancement grant @a[advancements={0_overworld/15_medieval_age=false}] only 0_overworld/15_medieval_age
# 중세: 상점에서 연금술 공방을 Lv. 1로 업그레이드할 수 있다.

playsound entity.player.levelup master @s ~ ~ ~ 0.8 1.0
