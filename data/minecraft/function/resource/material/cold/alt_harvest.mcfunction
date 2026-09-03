# 현재 냉기 보유량만큼 추가 획득하며, 보유량이 0이면 1개를 획득한다.
# 푸른 얼음 일회성 노드는 플레이어가 직접 채굴하는 특수 자원이므로 카탈리스트 적용 대상으로 표시한다.
scoreboard players set #catalyst_active_harvest var 1
scoreboard players operation #material_add_value tmp = #cold material
execute if score #material_add_value tmp matches ..0 run scoreboard players set #material_add_value tmp 1
function resource/add_material/cold
scoreboard players set #catalyst_active_harvest var 0
