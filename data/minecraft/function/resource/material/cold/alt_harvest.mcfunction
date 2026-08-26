# 현재 냉기 보유량만큼 추가 획득하며, 보유량이 0이면 1개를 획득합니다.
scoreboard players operation #material_add_value tmp = #cold material
execute if score #material_add_value tmp matches ..0 run scoreboard players set #material_add_value tmp 1
function resource/add_material/cold
