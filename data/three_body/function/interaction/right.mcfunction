# 기능별 우클릭 분배
execute if entity @s[tag=dimension_mover] on target run function three_body:interaction/right/dimension_mover

# 이벤트 소비
 data remove entity @s interaction
