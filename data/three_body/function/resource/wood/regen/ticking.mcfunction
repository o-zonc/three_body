# ==================================================
# Wood regeneration ticking
# ==================================================

# 해금되지 않은 자원은 관리하지 않는다.
execute unless score #wood unlock matches 1.. run return 0

# 나무가 존재하면 regeneration 상태를 관리할 필요가 없다.
execute unless block 0 -59 35 air run return 0

# 나무가 사라진 직후에는 파괴 처리와 동시에 쿨타임을 설정한다.
# break 함수가 쿨타임(#wood_remain generate)을 설정한다.
execute unless score #wood_remain generate matches 1.. run function three_body:resource/wood/regen/break

# 쿨타임이 끝났으면 나무를 재생성한다.
execute if score #wood_remain generate matches ..0 run function three_body:resource/wood/regen/place

# 쿨타임이 남아 있으면 1틱 감소시킨다.
execute if score #wood_remain generate matches 1.. run scoreboard players remove #wood_remain generate 1
