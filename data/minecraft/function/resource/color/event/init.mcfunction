# 전체 restart 뒤 본편이 시작될 때, 또는 업데이트 전부터 진행 중인 세이브의 첫 load에서만 실행된다.
execute if score #color_resources_unlocked var matches 1 run return 0
# -1만 미예약 상태다. 0은 만료 대기, -2는 이미 발동한 상태이므로 reload에서 다시 추첨하지 않는다.
execute unless score #color_event_timer var matches -1 run return 0
execute store result score #color_event_timer var run random value 36000..72000
scoreboard players set #color_event_pending var 0
