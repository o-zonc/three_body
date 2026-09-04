# 전용 운석 멸망은 일반 랜덤 원인 목록을 통하지 않되, 공용 멸망 시작 흐름은 재사용한다.
execute if score #color_resources_unlocked var matches 1 run return 0
execute if score #color_event_timer var matches -2 run return 0
execute if score #disaster_running run matches 1 run return 0
# 발동 순간 영구 상태를 먼저 확정해 reload·재접속·수동 재호출로 중복 발동하지 않게 한다.
scoreboard players set #color_event_timer var -2
scoreboard players set #color_event_pending var 0
scoreboard players set #color_event_meteor var 1
scoreboard players set #GLOBAL user_disaster 0
function common/disaster/do
