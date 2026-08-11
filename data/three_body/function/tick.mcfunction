# 플레이어 상태
execute as @a if predicate three_body:player/sneaking run tag @s add shift
execute as @a unless predicate three_body:player/sneaking run tag @s remove shift

# 인터랙션 이벤트
function three_body:interaction/detect
