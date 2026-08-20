# 정보 5개와 시간 2개의 지급/초과 보관을 확인하는 개발용 테스트 함수
scoreboard players set #material_add_value tmp 5
function meta/information/give
scoreboard players set #material_add_value tmp 2
function meta/time/give
function resource/material/information/ui/info
function resource/material/time/ui/info
