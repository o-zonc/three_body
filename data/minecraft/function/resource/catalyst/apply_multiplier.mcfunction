# 카탈리스트는 플레이어가 직접 자원 노드를 채굴한 획득량에만 적용한다.
# 공장 자동 채굴, 발전과제 자동 채굴, 환경 수급, 상점/연금술 변환에서는
# #catalyst_active_harvest가 1이 아니므로 이 함수가 아무 것도 하지 않는다.
execute unless score #catalyst_active_harvest var matches 1 run return 0
execute unless score #catalyst_timer var matches 1.. run return 0
execute unless score #catalyst_multiplier var matches 2.. run return 0
scoreboard players operation #material_add_value tmp *= #catalyst_multiplier var
return 1
