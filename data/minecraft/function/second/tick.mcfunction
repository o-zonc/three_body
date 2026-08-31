# 2회차 공통 tick 진입점.
# 장별 상태 머신은 각 장을 구현할 때 second_story 값에 따라 이곳에서 분배합니다.
# full reset 당시 오프라인이었던 플레이어의 임시 태그는 재접속 시 정리합니다.
execute as @a[tag=second] unless score @s second_story matches 1..7 run tag @s remove second
execute as @a[tag=third] unless score @s second_story matches 4..5 run tag @s remove third
