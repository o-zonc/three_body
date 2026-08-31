execute if score #overworld civilization_age matches 3.. run return 0
scoreboard players set #overworld civilization_age 3
advancement grant @a[advancements={0_overworld/12_bronze_age=false}] only 0_overworld/12_bronze_age

# 청동기 시대 진입 보상: 하늘의 은총 1개
function item/give/heavenly_grace
function resource/advancement_reward/wood/enable

playsound entity.player.levelup master @s ~ ~ ~ 0.8 1.0
