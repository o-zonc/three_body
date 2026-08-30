execute if score #overworld civilization_age matches 7.. run return 0
scoreboard players set #overworld civilization_age 7
advancement grant @a[advancements={0_overworld/16_modern_age=false}] only 0_overworld/16_modern_age
# 근대: 상점에서 연금술 공방을 Lv. 2로 업그레이드할 수 있다.
playsound entity.player.levelup master @s ~ ~ ~ 0.8 1.0

function resource/advancement_reward/coal/enable
