# 플레이어 상태
execute as @a if predicate three_body:player/sneaking run tag @s add shift
execute as @a unless predicate three_body:player/sneaking run tag @s remove shift

# 차원 이동기: 극야에서는 사용 제한
# 웅크린 상태에서 극야의 차원 이동기를 사용하려고 하면 한 번만 경고를 표시
execute as @a at @s if entity @s[tag=shift] if predicate three_body:item/dimension_mover if dimension three_body:polarnight unless entity @s[tag=dimension_mover_blocked] run title @s title {"text":"이곳에서는 사용이 제한됩니다!","color":"red","bold":true}
execute as @a if predicate three_body:player/sneaking if predicate three_body:item/dimension_mover if dimension three_body:polarnight run tag @s add dimension_mover_blocked
execute as @a unless entity @s[tag=shift] run tag @s remove dimension_mover_blocked
execute as @a unless predicate three_body:item/dimension_mover run tag @s remove dimension_mover_blocked
execute as @a unless dimension three_body:polarnight run tag @s remove dimension_mover_blocked

# 차원 이동기: 주 손에 들고 웅크리면 실행
# 극야에서는 위의 제한 처리로 차단됨
execute as @a at @s if predicate three_body:item/dimension_mover if entity @s[tag=shift] unless dimension three_body:polarnight run function three_body:common/disaster/do

# 인터랙션 이벤트
function three_body:interaction/detect
