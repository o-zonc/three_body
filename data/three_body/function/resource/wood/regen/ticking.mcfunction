# ==================================================
# Wood regeneration ticking
# ==================================================

# 해금되지 않은 자원은 관리하지 않는다.
execute unless score #wood unlock matches 1 run return 0

# 이미 생성되어 있거나, 아직 재생성 대기 시간이 남아 있으면 종료한다.
execute if score #wood_remain generate matches 1.. run scoreboard players remove #wood_remain generate 1
execute if score #wood_remain generate matches 1.. run return 0

# remain이 0이 된 뒤 실제 생성 지점이 비어 있는지 확인한다.
# TODO: 실제 wood 생성 좌표를 확정하면 아래 조건을 활성화한다.
# execute if block <x> <y> <z> air run function three_body:resource/wood/regen/place
