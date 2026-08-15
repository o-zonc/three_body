# ==================================================
# Coal regeneration break
# ==================================================

# 석탄 파괴 시 자원 1개를 지급한다.
data modify storage three_body:resource input set value {type:"coal",amount:1}
function three_body:resource/add with storage three_body:resource.input

# 석탄가 파괴된 순간 현재 regeneration level의 쿨타임을 설정한다.
function three_body:resource/coal/value/now_regen_data
execute store result score #coal_remain generate run function three_body:resource/coal/value/regen_value
