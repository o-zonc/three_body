# 프로덕션 초기화와 분리된 수동 테스트 진입점이다.
execute if score #color_resources_unlocked var matches 1 run tellraw @s {text:"[TEST] 이미 외계 자원이 해금되어 타이머를 변경하지 않았습니다.",color:"red"}
execute if score #color_resources_unlocked var matches 1 run return 0
scoreboard players set #color_event_timer var 100
scoreboard players set #color_event_pending var 0
function test/color_event_status
