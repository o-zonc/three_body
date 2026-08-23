# 세대 상승 시 현재까지의 누적 연구 투자 비율로 세대 특성을 확정합니다.
# 노랑 우세: 생산량 특화 / 파랑 우세: 생산 주기 특화 / 동률: 숨겨진 초록 특성
# 발전 트리 기록은 upgrade objective에 저장하여 전체 초기화의 * upgrade 0과 함께 정리됩니다.

execute if score #time_machine_yellow upgrade > #time_machine_blue upgrade run scoreboard players add #time_machine_path_yellow upgrade 1
execute if score #time_machine_blue upgrade > #time_machine_yellow upgrade run scoreboard players add #time_machine_path_blue upgrade 1
execute if score #time_machine_yellow upgrade = #time_machine_blue upgrade run scoreboard players add #time_machine_path_green upgrade 1
execute if score #time_machine_yellow upgrade = #time_machine_blue upgrade run scoreboard players set #time_machine_green_discovered upgrade 1

execute if score #time_machine_yellow upgrade > #time_machine_blue upgrade run tellraw @s ["",{"text":"\n  [ 노랑 발전 트리 ]","color":"yellow","bold":true},{"text":"\n  시간 생산량 특화 세대가 확립되었습니다. 생산량 +2","color":"gray","bold":false}]
execute if score #time_machine_blue upgrade > #time_machine_yellow upgrade run tellraw @s ["",{"text":"\n  [ 파랑 발전 트리 ]","color":"blue","bold":true},{"text":"\n  시간 흐름 가속 세대가 확립되었습니다. 생산 주기 -75틱","color":"gray","bold":false}]
execute if score #time_machine_yellow upgrade = #time_machine_blue upgrade run tellraw @s ["",{"text":"\n  [ 숨겨진 초록 발전 트리 발견 ]","color":"green","bold":true},{"text":"\n  두 연구의 균형으로 복합 시간 공학이 확립되었습니다. 생산량 +1 / 생산 주기 -15틱","color":"gray","bold":false}]
