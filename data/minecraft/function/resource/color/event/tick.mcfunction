# 외계 자원을 이미 발견한 회차에는 타이머와 이벤트를 더 이상 처리하지 않는다.
execute if score #color_resources_unlocked var matches 1 run return 0
execute unless entity @a[tag=player] run return 0
execute if score #color_event_timer var matches -2 run return 0

# 본편 시작 뒤에는 일반 멸망/정산과 무관하게 전체 회차 타이머가 계속 흐른다.
execute if score #color_event_timer var matches 1.. run scoreboard players remove #color_event_timer var 1
execute if score #color_event_timer var matches ..0 run scoreboard players set #color_event_pending var 1
execute if score #color_event_pending var matches 1 run function resource/color/event/try_start
