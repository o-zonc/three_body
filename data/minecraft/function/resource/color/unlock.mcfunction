# 전용 운석 충돌 문명 정산이 끝난 뒤 호출합니다.
# 영구 플래그를 노랑/파랑 사용 가능 여부의 source of truth로 사용합니다.
scoreboard players set #color_resources_unlocked var 1
scoreboard players set #yellow unlock 1
scoreboard players set #blue unlock 1
execute in minecraft:overworld run function resource/material/yellow/place
execute in minecraft:overworld run function resource/material/blue/place
function tool/refresh_all
