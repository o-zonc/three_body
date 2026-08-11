# 플레이어 상태
execute as @a if predicate three_body:player/sneaking run tag @s add shift
execute as @a unless predicate three_body:player/sneaking run tag @s remove shift

# 차원 이동기: 주 손에 들고 웅크리면 실행
execute as @a if predicate three_body:item/dimension_mover if entity @s[tag=shift] run function three_body:common/disaster/do

# 인터랙션 이벤트
function three_body:interaction/detect
