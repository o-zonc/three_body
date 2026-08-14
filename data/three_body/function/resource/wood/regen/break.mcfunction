# ==================================================
# Wood resource collection
# ==================================================

# Material API input
# three_body:resource input {type:"wood",amount:<amount>}
data modify storage three_body:resource input.type set value "wood"

# 이번 채취량 계산
execute store result storage three_body:resource input.amount int 1 run function three_body:resource/wood/value/regen_value

# Material API를 통해 wood 지급
function three_body:resource/add

# 생성 지점 제거
# TODO: 실제 wood 생성 좌표가 정해지면 setblock <x> <y> <z> air

# 다음 재생성까지의 값 계산
execute store result score #wood_remain generate run function three_body:resource/wood/value/regen_value