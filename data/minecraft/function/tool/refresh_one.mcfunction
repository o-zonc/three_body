# 전체 플레이어를 먼저 비우지 않고, 현재 플레이어 하나의 도구만 원자적으로 교체한다.
clear @s *[minecraft:custom_data~{tool:{}}]
function tool/give_current
