# 직접 scoreboard를 수정하는 레거시 경로를 위한 안전망입니다.
# 정상 add API는 자체적으로 상한을 적용하므로 전체 자원 검사는 초당 1회면 충분합니다.
scoreboard players add #material_limit_timer var 1
execute unless score #material_limit_timer var matches 20.. run return 0
scoreboard players set #material_limit_timer var 0
function resource/limit_materials
