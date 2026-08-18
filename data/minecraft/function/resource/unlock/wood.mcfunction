# 게임 시작 시 나무를 먼저 해금한 뒤 목기 시대 발전과제를 부여한다.
execute if score #wood unlock matches 1 run return 0
scoreboard players set #wood unlock 1
execute in overworld run function resource/material/wood/place
advancement grant @a only 0_overworld/10_wood_age
execute unless score #overworld civilization_age matches 1.. run scoreboard players set #overworld civilization_age 1
function resource/effect/unlock_success
return 1
