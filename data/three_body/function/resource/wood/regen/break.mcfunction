# ==================================================
# Wood regeneration break
# ==================================================

# 나무가 파괴된 순간 현재 regeneration level의 쿨타임을 설정한다.
function three_body:resource/wood/value/now_regen_data
execute store result score #wood_remain generate run function three_body:resource/wood/value/regen_value
