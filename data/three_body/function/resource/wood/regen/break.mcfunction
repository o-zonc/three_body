# ==================================================
# Wood regeneration break
# ==================================================

# 나무 파괴 시 자원 1개를 지급한다.
data modify storage three_body:resource input set value {type:"wood",amount:1}
function three_body:resource/add with storage three_body:resource.input

# 나무가 파괴된 순간 현재 regeneration level의 쿨타임을 설정한다.
function three_body:resource/wood/value/now_regen_data
execute store result score #wood_remain generate run function three_body:resource/wood/value/regen_value
