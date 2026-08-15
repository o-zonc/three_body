# ==================================================
# Diamond regeneration break
# ==================================================

# 다이아몬드 파괴 시 자원 1개를 지급한다.
data modify storage three_body:resource input set value {type:"diamond",amount:1}
function three_body:resource/add with storage three_body:resource.input

# 다이아몬드가 파괴된 순간 현재 regeneration level의 쿨타임을 설정한다.
function three_body:resource/diamond/value/now_regen_data
execute store result score #diamond_remain generate run function three_body:resource/diamond/value/regen_value
