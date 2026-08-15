# ==================================================
# Gold regeneration break
# ==================================================

# 금 파괴 시 자원 1개를 지급한다.
data modify storage three_body:resource input set value {type:"gold",amount:1}
function three_body:resource/add with storage three_body:resource.input

# 금가 파괴된 순간 현재 regeneration level의 쿨타임을 설정한다.
function three_body:resource/gold/value/now_regen_data
execute store result score #gold_remain generate run function three_body:resource/gold/value/regen_value
