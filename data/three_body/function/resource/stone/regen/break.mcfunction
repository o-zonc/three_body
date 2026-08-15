# ==================================================
# Stone regeneration break
# ==================================================

# 돌 파괴 시 자원 1개를 지급한다.
data modify storage three_body:resource input set value {type:"stone",amount:1}
function three_body:resource/add with storage three_body:resource.input

# 돌가 파괴된 순간 현재 regeneration level의 쿨타임을 설정한다.
function three_body:resource/stone/value/now_regen_data
execute store result score #stone_remain generate run function three_body:resource/stone/value/regen_value
