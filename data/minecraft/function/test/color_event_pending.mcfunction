# 안전 조건이 풀릴 때까지 이벤트가 보존되는지 검사하기 위한 수동 진입점입니다.
execute if score #color_resources_unlocked var matches 1 run tellraw @s {text:"[TEST] 이미 외계 자원이 해금되어 pending을 변경하지 않았습니다.",color:"red"}
execute if score #color_resources_unlocked var matches 1 run return 0
scoreboard players set #color_event_timer var 0
scoreboard players set #color_event_pending var 1
function test/color_event_status
