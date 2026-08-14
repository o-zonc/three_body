# ==================================================
# Wood regeneration ticking
# ==================================================

# 해금되지 않은 자원은 생성하지 않는다.
execute unless score #wood unlock matches 1 run return 0

# TODO: 실제 wood 생성 지점의 상태를 검사한다.
# 자원이 존재하면 현재 상태를 유지한다.

# TODO: 생성 지점이 비어 있고 재생성 조건을 만족하면 break를 호출한다.
# execute if block <x> <y> <z> air if score #wood_remain generate matches 0 run function three_body:resource/wood/regen/break