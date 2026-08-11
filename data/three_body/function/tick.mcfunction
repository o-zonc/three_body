# 플레이어 상태
execute as @a if predicate three_body:player/sneaking run tag @s add shift
execute as @a unless predicate three_body:player/sneaking run tag @s remove shift

# 차원 이동기: 주 손에 들고 웅크리면 실행
# 플레이어 위치를 실행 위치로 설정하여 멸망 연출의 상대 좌표/사운드가 플레이어 기준으로 처리되도록 함
execute as @a at @s if predicate three_body:item/dimension_mover if entity @s[tag=shift] run function three_body:common/disaster/do

# 인터랙션 이벤트
function three_body:interaction/detect
