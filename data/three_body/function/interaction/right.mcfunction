# 기능별 우클릭 분배
execute on target if predicate three_body:item/dimension_mover run function three_body:interaction/right/dimension_mover

# 이벤트 소비
data remove entity @s interaction
