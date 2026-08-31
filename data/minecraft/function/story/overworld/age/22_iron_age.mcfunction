execute if score #overworld civilization_age matches 4.. run return 0
scoreboard players set #overworld civilization_age 4
advancement grant @a[advancements={0_overworld/13_iron_age=false}] only 0_overworld/13_iron_age

playsound entity.player.levelup master @s ~ ~ ~ 0.8 1.0

function resource/advancement_reward/wood/enable

# 보존된 자원 상점 레벨이 이미 조건을 만족할 수 있으므로 철기 진입 즉시 고대 조건을 검사합니다.
function story/overworld/age/check_ancient_age
