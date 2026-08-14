# ==================================================
# Wood regeneration ticking
# ==================================================

# 해금되지 않은 자원은 관리하지 않는다.
execute unless score #wood unlock matches 1.. run return 0

# 나무가 아직 존재하면 재생성 처리를 하지 않는다.
execute unless block 0 -59 35 air run return 0

# 쿨타임이 초기화되어 있지 않다면 현재 레벨의 쿨타임을 설정한다.
execute unless score #wood_remain generate matches 0.. run function three_body:resource/wood/value/now_regen_data
execute unless score #wood_remain generate matches 0.. run execute store result score #wood_remain generate run function three_body:resource/wood/value/regen_value
execute unless score #wood_remain generate matches 0.. run return 0

# 나무가 없을 때만 재생성 쿨타임을 감소시킨다.
execute if score #wood_remain generate matches 1.. run scoreboard players remove #wood_remain generate 1
execute if score #wood_remain generate matches 1.. run return 0

# 쿨타임이 끝났고 생성 위치가 비어 있으면 나무를 생성한다.
function three_body:resource/wood/regen/place
