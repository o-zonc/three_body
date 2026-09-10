# 매크로 인수: id
# 비용 지불을 거치지 않은 정상 획득 경로에서, 실제 지급된 자원만 기존 해금 상태와 후처리에 연결한다.
$execute if score #$(id) unlock matches 1 run return 0
$scoreboard players set #$(id) unlock 1
$execute in minecraft:overworld run function resource/material/$(id)/place
function ui/sidebar/sync_unlocked
return 1
